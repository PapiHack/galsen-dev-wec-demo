import 'package:flutter/material.dart';
import 'package:simple_blog_app/presentation/widgets/widgets.dart';

class ListArticlesScreen extends StatelessWidget {
  const ListArticlesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleWidget(
              title: 'SimpleBlog',
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListArticleItemWidget(),
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
