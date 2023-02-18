import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:simple_blog_app_using_bloc_pattern/data/data.dart';
import 'package:simple_blog_app_using_bloc_pattern/features/add_article/bloc/add_article_bloc.dart';
import 'package:simple_blog_app_using_bloc_pattern/services/article_service.dart';

part 'articles_event.dart';
part 'articles_state.dart';

class ArticlesBloc extends Bloc<ArticlesEvent, ArticlesState> {
  final AddArticleBloc addArticleBloc;
  final ArticleRepository articleRepository = ArticleRepository(articleService: ArticleService());
  late StreamSubscription addArticleStreamSubscription;

  ArticlesBloc({required this.addArticleBloc}) : super(ArticlesInitial()) {
    on<ArticlesEvent>((event, emit) async {

      

      if(event is ArticlesLoadDataEvent) {
        emit(ArticlesDataLoadingState());

        try {
          List<ArticleModel> articles = await articleRepository.getAll();
          emit(ArticlesDataLoadedSuccessState(articles: articles));
          emit.isDone;
        } catch(e) {
          emit(ArticlesDataLoadingFailureState(message: e.toString()));
        }
      }
    });
  }
}
