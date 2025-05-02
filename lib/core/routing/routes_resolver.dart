import 'package:appointment/features/sign_in/ui/sign_in.dart';
import 'package:appointment/features/sign_up/ui/sign_up.dart';
import 'package:flutter/material.dart';

import '../../features/onboarding/on_boarding.dart';

class RoutesResolver {
  Route getRoute(RouteSettings settings) {
    final route = settings.name;
    switch (route) {
      case '/onboarding':
        return MaterialPageRoute(builder: (_) => const OnBoardingPage());
      case '/sign-in':
        return MaterialPageRoute(builder: (_) => const SignInPage());
      case '/sign-up':
        return MaterialPageRoute(builder: (_) => const SignUpPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(body: Center(child: Text("404 Not Found"))),
        );
    }
  }
}
