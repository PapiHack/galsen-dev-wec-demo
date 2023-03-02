part of 'add_article_bloc.dart';

@immutable
abstract class AddArticleEvent extends Equatable{
  const AddArticleEvent();

  @override
  List<Object> get props => [];
}

class SubmitArticleEvent extends AddArticleEvent {
  final ArticleDTO article;

  const SubmitArticleEvent({
    required this.article
  });

  @override
  List<Object> get props => [article];
}
