import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_blog_app_using_bloc_pattern/data/data.dart';
import 'package:simple_blog_app_using_bloc_pattern/presentation/presentation.dart';

class ArticleDetailScreen extends StatelessWidget {
  final ArticleModel articleModel;
  const ArticleDetailScreen({
    Key? key,
    required this.articleModel,
  }) : super(key: key);

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
            TitleWidget(
              title: articleModel.title,
            ),
            Expanded(
              child: ListArticleItemDetailWidget(
                articleModel: articleModel,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
