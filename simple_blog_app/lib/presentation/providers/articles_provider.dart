import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_blog_app/data/data.dart';

final articleRepositoryProvider = Provider<ArticleRepository>(
  (ref) => ArticleRepository(),
);

final articlesProvider = FutureProvider.autoDispose<List<ArticleModel>>(
  (ref) async {
    // Will allow you to refresh the provider every 15s
    // final timer = Timer(
    //   const Duration(
    //     seconds: 15,
    //   ),
    //   () => ref.invalidateSelf(),
    // );
    // ref.onDispose(timer.cancel);
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
