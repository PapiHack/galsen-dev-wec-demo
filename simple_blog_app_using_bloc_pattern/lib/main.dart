import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_blog_app_using_bloc_pattern/features/add_article/bloc/add_article_bloc.dart';
import 'package:simple_blog_app_using_bloc_pattern/features/articles/bloc/articles_bloc.dart';
import 'package:simple_blog_app_using_bloc_pattern/simple_blog_app.dart';
import 'package:simple_blog_app_using_bloc_pattern/utils/utils.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvironmentConfig.load();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then(
    (value) => runApp(
      MultiBlocProvider(providers: [
        BlocProvider(create: (context) => AddArticleBloc()),
        BlocProvider(create: (context) => ArticlesBloc(addArticleBloc: context.read<AddArticleBloc>())),
      ], child: const SimpleBlogApp()),
    ),
  );
}
