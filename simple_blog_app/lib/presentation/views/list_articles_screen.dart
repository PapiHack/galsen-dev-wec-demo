import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_blog_app/presentation/presentation.dart';

class ListArticlesScreen extends ConsumerWidget {
  const ListArticlesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final articles$ = ref.watch(articlesProvider);
    return articles$.when(
      data: (articles) => Scaffold(
        floatingActionButton: CustomFloatingButton(
          onPressed: () => Navigator.pushNamed(
            context,
            '/articles/create',
          ),
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 24,
          ),
        ),
        body: SafeArea(
          child: RefreshIndicator(
            color: Colors.black,
            backgroundColor: Colors.white,
            onRefresh: () => ref.refresh(articlesProvider.future),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleWidget(
                  title: 'SimpleBlog',
                ),
                Expanded(
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Column(
                      children: [
                        if (articles.isNotEmpty)
                          ...articles.map(
                            (article) => ListArticleItemWidget(
                              articleModel: article,
                            ),
                          )
                        else
                          TitleWidget(
                            title: 'Aucun article trouvé pour le moment!',
                            fontSize: 18,
                          ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      error: (
        error,
        stackTrace,
      ) =>
          TitleWidget(
        title: error.toString(),
        fontSize: 18,
      ),
      loading: () => CustomLoader(),
    );
  }
}
