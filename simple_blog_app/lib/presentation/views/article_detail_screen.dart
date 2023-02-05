import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_blog_app/presentation/presentation.dart';

class ArticleDetailScreen extends StatelessWidget {
  const ArticleDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomFloatingButton(
        onPressed: () => Navigator.pop(context),
        child: SvgPicture.asset(
          'assets/arrow_go_back.svg',
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TODO: To be replaced by the article's title
            TitleWidget(
              title: 'Article 1',
            ),
            Expanded(
              child: ListArticleItemDetailWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
