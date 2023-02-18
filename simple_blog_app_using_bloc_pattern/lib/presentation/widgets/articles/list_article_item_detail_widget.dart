import 'package:flutter/material.dart';
import 'package:simple_blog_app_using_bloc_pattern/data/data.dart';
import 'package:simple_blog_app_using_bloc_pattern/presentation/presentation.dart';

class ListArticleItemDetailWidget extends StatelessWidget {
  final ArticleModel articleModel;
  const ListArticleItemDetailWidget({
    Key? key,
    required this.articleModel,
  }) : super(key: key);

  String getDateMonth(int month) {
    List<String> months = [
      'Janvier',
      'Février',
      'Mars',
      'Avril',
      'Mai',
      'Juin',
      'Juillet',
      'Août',
      'Septembre',
      'Octobre',
      'Novembre',
      'Décembre',
    ];
    return months.elementAt(month - 1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 11),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Row(
                  children: [
                    const TitleWidget(
                      title: 'Écrit par ',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      margin: EdgeInsets.only(left: 25),
                    ),
                    TitleWidget(
                      title: articleModel.author,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      margin: null,
                    ),
                  ],
                ),
              ),
              TitleWidget(
                title:
                    '${articleModel.createdAt.day} ${getDateMonth(articleModel.createdAt.month)} ${articleModel.createdAt.year}',
                fontSize: 12,
                fontWeight: FontWeight.w400,
                margin: const EdgeInsets.only(left: 25, right: 25),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 25.0),
          child: const Divider(
            thickness: 1.0,
            color: Colors.black,
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                TitleWidget(
                  title: articleModel.content,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  margin: const EdgeInsets.only(
                    left: 25,
                    right: 25,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
