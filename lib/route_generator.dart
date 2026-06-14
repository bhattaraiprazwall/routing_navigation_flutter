import 'package:flutter/material.dart';
import 'package:routing_navigation_flutter/main_ongenerateroute.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => FirstPage());

      case '/second':
        //Validation of correct datatype
        if (args is String) {
          return MaterialPageRoute(builder: (_) => SecondPage(data: args));
        }

        //If arguments if not of correct type return the error Page
        //Also can throw exception while in development
        return _errorRoute();
      default:
        //if no any named route exists
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: Text('Page not found')),
        body: Text('Page not found'),
      ),
    );
  }
}
