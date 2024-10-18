import 'package:docdoc/core/routing/route.dart';
import 'package:docdoc/feature/login/ui/login_screen.dart';
import 'package:docdoc/feature/onboarding/on_boarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
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
