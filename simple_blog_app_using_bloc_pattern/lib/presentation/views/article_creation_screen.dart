import 'package:flutter/material.dart';
import 'package:simple_blog_app_using_bloc_pattern/presentation/presentation.dart';

class ArticleCreationScreen extends StatelessWidget {
  const ArticleCreationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomFloatingButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(
          Icons.close_sharp,
          color: Colors.white,
          size: 24,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            TitleWidget(
              title: 'SimpleBlog',
            ),
            Center(
              child: TitleWidget(
                margin: EdgeInsets.only(
                  top: 50,
                ),
                title: 'Ajouter un article',
                fontSize: 24,
              ),
            ),
            Expanded(
              child: Center(
                child: ArticleFormCreationWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
