import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_blog_app_using_bloc_pattern/data/data.dart';
import 'package:simple_blog_app_using_bloc_pattern/features/articles/bloc/articles_bloc.dart';
import 'package:simple_blog_app_using_bloc_pattern/presentation/presentation.dart';

class ListArticlesScreen extends StatelessWidget {
  const ListArticlesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    BlocProvider.of<ArticlesBloc>(context).add(ArticlesLoadDataEvent());

    return Scaffold(
      floatingActionButton: CustomFloatingButton(
        onPressed: () => Navigator.pushNamed(
          context,
          '/articles/create',
        ),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 24,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleWidget(
              title: 'SimpleBlog',
            ),
            Expanded(
              child: SingleChildScrollView(
                // physics: BouncingScrollPhysics(
                //   parent: AlwaysScrollableScrollPhysics(),
                // ),
                child: BlocBuilder<ArticlesBloc, ArticlesState>(
                  builder: ((context, state) {
                    if(state is ArticlesDataLoadedSuccessState) {
                      List<ArticleModel> articles = state.articles;
                      return articles.isEmpty ? const SizedBox(child: Text('Aucun artilces')) : Column(
                        children: [
                          ...articles.map(
                            (article) => ListArticleItemWidget(
                              articleModel: article,
                            ),
                          ),
                        ],
                      );
                    } else if(state is ArticlesDataLoadingFailureState) {
                      return SizedBox(
                        child: Text(
                          state.message,
                          style: const TextStyle(
                            color: Colors.red
                          ),
                        ),
                      );
                    } else {
                      return const CircularProgressIndicator(color: Colors.black,);
                    }
                  })
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
// CircularProgressIndicator(color: Colors.black,),
// Column(
//                   children: [
//                     ...articles.map(
//                       (article) => ListArticleItemWidget(
//                         articleModel: article,
//                       ),
//                     ),
//                   ],
//                 )
