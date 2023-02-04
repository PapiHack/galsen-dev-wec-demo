import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_blog_app/simple_blog_app.dart';
import 'package:simple_blog_app/utils/utils.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvironmentConfig.load();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then(
    (value) => runApp(
      SimpleBlogApp(),
    ),
  );
}
