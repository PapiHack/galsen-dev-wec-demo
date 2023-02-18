part of 'articles_bloc.dart';

@immutable
abstract class ArticlesState extends Equatable {
  const ArticlesState();

  @override
  List<Object> get props => [];
}

class ArticlesInitial extends ArticlesState {}

class ArticlesDataLoadingState extends ArticlesState {}

class ArticlesDataLoadedSuccessState extends ArticlesState {
  final List<ArticleModel> articles;

  const ArticlesDataLoadedSuccessState({
    required this.articles
  });

  @override
  List<Object> get props => [articles];
}

class ArticlesDataLoadingFailureState extends ArticlesState {
  final String message;

  const ArticlesDataLoadingFailureState({
    required this.message
  });

  @override
  List<Object> get props => [message];
}
