import 'package:docdoc/core/routing/route.dart';
import 'package:docdoc/feature/login/ui/login_screen.dart';
import 'package:docdoc/feature/onboarding/on_boarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // this arguments is used to pass data from one screen to another
    // final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());

      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Text('No Routes defied to ${settings.name}'),
          ),
        );
    }
  }
}
