import 'package:flutter/material.dart';
import 'package:simple_blog_app/presentation/presentation.dart';

class ArticleCreationScreen extends StatelessWidget {
  const ArticleCreationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomFloatingButton(
        onPressed: () => Navigator.pop(context),
        child: Icon(
          Icons.close_sharp,
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
                child: Column(
                  children: [
                    Center(
                      child: TitleWidget(
                        title: 'Ajouter un article',
                        fontSize: 24,
                        margin: EdgeInsets.only(
                          top: 50,
                          bottom: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
