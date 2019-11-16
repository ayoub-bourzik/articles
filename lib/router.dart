import 'package:articles/add_page.dart';
import 'package:articles/main.dart';
import 'package:flutter/material.dart';

class Router {
  static const String homeRoute = '/';
  static const String addRoute = '/add';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomePage());
      case addRoute:
        return MaterialPageRoute(builder: (_) => AddArticlePage());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                  child: Text(
                    'No route defined for ${settings.name}',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  )),
            ));
    }
  }
}
