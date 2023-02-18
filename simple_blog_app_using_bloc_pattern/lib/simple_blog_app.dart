import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:simple_blog_app_using_bloc_pattern/config/config.dart';

class SimpleBlogApp extends StatelessWidget {
  const SimpleBlogApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: ((
        context,
        orientation,
        deviceType,
      ) =>
          MaterialApp(
            title: 'SimpleBlog',
            theme: AppTheme.theme,
            onGenerateRoute: AppRouter.generateRoutes,
            initialRoute: '/',
            debugShowCheckedModeBanner: false,
          )),
    );
  }
}
