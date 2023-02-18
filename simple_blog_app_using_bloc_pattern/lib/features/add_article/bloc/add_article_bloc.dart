import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:simple_blog_app_using_bloc_pattern/data/data.dart';
import 'package:simple_blog_app_using_bloc_pattern/services/article_service.dart';

part 'add_article_event.dart';
part 'add_article_state.dart';

class AddArticleBloc extends Bloc<AddArticleEvent, AddArticleState> {

  final ArticleRepository articleRepository = ArticleRepository(articleService: ArticleService());

  AddArticleBloc() : super(AddArticleInitial()) {
    on<AddArticleEvent>((event, emit) async {
      if(event is SubmitArticleEvent) {
        try {
          ArticleModel article = await articleRepository.save(event.article);

          emit(AddArticleSuccessState(article: article));
        } catch(e) {
          emit(AddArticleFailureState(message: e.toString()));
        }
      }
    });
  }
}
