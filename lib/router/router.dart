import 'package:egar/registration/signin/number_code_page.dart';
import 'package:egar/registration/signin/signin_page.dart';
import 'package:egar/registration/signup/sign_up.dart';
import 'package:egar/screens/entrance/entrance_page.dart';
import 'package:egar/screens/mainpage/main_page.dart';
import 'package:flutter/material.dart';

class GenerateRouter {
  static generateRoute(RouteSettings settings) {
    final _arguments = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (context) => const EntrancePage(),
        );

      case "/signin":
        return MaterialPageRoute(
          builder: (context) =>  SignInPage(),
        );

      case "/numbercode":
        return MaterialPageRoute(
          builder: (context) =>  NumberCodePage(),
        );

      
      case "/mainpage":
        return MaterialPageRoute(
          builder: (context) =>  MainPage(),
        );


      case "/signup":
        return MaterialPageRoute(
          builder: (context) =>  SignUp(),
        );


    }
  }
}
