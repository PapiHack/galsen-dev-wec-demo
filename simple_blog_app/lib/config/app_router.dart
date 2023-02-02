import 'package:flutter/material.dart';
import 'package:simple_blog_app/presentation/presentation.dart';

class AppRouter {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
      case '/articles':
        return MaterialPageRoute(
          builder: (_) => const ListArticlesScreen(),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
          ),
          body: const Center(
            child: Text('error'),
          ),
        );
      },
    );
  }
}
