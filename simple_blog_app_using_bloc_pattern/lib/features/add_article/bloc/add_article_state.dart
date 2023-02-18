part of 'add_article_bloc.dart';

@immutable
abstract class AddArticleState extends Equatable{

  const AddArticleState();

  @override
  List<Object> get props => [];
}

class AddArticleInitial extends AddArticleState {}

class AddArticleSuccessState extends AddArticleState {
  final ArticleModel article;

  const AddArticleSuccessState({
    required this.article
  });

  @override
  List<Object> get props => [article];
}

class AddArticleFailureState extends AddArticleState {
  final String message;

  const AddArticleFailureState({
    required this.message
  });

  @override
  List<Object> get props => [message];
}
