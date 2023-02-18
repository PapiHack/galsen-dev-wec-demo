import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_blog_app/data/data.dart';

final articleRepositoryProvider = Provider<ArticleRepository>(
  (ref) => ArticleRepository(),
);

final articlesProvider = FutureProvider.autoDispose<List<ArticleModel>>(
  (ref) async {
    final articleRepository = ref.watch(articleRepositoryProvider);
    return articleRepository.getAll();
  },
);

final singleArticleProvider = FutureProvider.family<ArticleModel, int>(
  (ref, articleID) async {
    final articleRepository = ref.watch(articleRepositoryProvider);
    return articleRepository.getById(articleID);
  },
);

final articleCreationProvider =
    FutureProvider.family.autoDispose<ArticleModel, Map<String, String>>(
  (ref, articleData) async {
    final articleRepository = ref.watch(articleRepositoryProvider);
    var article = articleRepository.save(articleData);
    ref.invalidate(articlesProvider);
    return article;
  },
);
