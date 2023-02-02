import 'package:flutter/material.dart';
import 'package:simple_blog_app/presentation/presentation.dart';

class ListArticlesScreen extends StatelessWidget {
  const ListArticlesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomFloatingButton(
        onPressed: () => {},
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
