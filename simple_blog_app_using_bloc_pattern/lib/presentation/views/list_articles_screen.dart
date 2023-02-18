import 'package:flutter/material.dart';
import 'package:simple_blog_app_using_bloc_pattern/data/data.dart';
import 'package:simple_blog_app_using_bloc_pattern/presentation/presentation.dart';

class ListArticlesScreen extends StatelessWidget {
  const ListArticlesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Get articles from API
    List<ArticleModel> articles = [
      ArticleModel(
        id: 1,
        title: 'Article 1',
        content:
            'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Suscipit quam eius distinctio tempore vel beatae architecto nemo dolor possimus fuga fugiat nulla ullam autem sit voluptatum error dolores hic placeat, facere velit nam! Officiis porro maiores ex fugit veritatis ipsa!',
        author: 'John Doe',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
      ArticleModel(
        id: 2,
        title: 'Article 2',
        content:
            'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Suscipit quam eius distinctio tempore vel beatae architecto nemo dolor possimus fuga fugiat nulla ullam autem sit voluptatum error dolores hic placeat, facere velit nam! Officiis porro maiores ex fugit veritatis ipsa!',
        author: 'Jane Doe',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
    ];
    return Scaffold(
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleWidget(
              title: 'SimpleBlog',
            ),
            Expanded(
              child: SingleChildScrollView(
                // physics: BouncingScrollPhysics(
                //   parent: AlwaysScrollableScrollPhysics(),
                // ),
                child: Column(
                  children: [
                    ...articles.map(
                      (article) => ListArticleItemWidget(
                        articleModel: article,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
