import 'package:flutter/material.dart';
import 'package:meditrack/pages/homepage.dart';
import 'package:meditrack/pages/landingPage.dart';
import 'package:meditrack/pages/loginPage.dart';
import 'package:meditrack/pages/signUpPage.dart';
import 'package:meditrack/pages/wrapperPage.dart';

class RouteGenerator {
  static Route<dynamic> generatorRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch(settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LandingPage());
      case '/wrapper':
        return MaterialPageRoute(builder: (_) => WrapperPage());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/signup':
        return MaterialPageRoute(builder: (_)=> SignUpPage());
      case '/homepage':
        return MaterialPageRoute(builder: (_) => Homepage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        body: Text("ERROR"),
      );
    });
  }
}