import 'package:flutter/material.dart';
import 'package:projekt_grupowy/routing/main_screen.dart';
import 'package:projekt_grupowy/screens/auth/login_screen.dart';
import 'package:page_transition/page_transition.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => const MainScreen(),
          settings: settings,
        );
      case LoginScreen.routeName:
        var link = settings.arguments as String;
        return PageTransition(
          child: const LoginScreen(),
          type: PageTransitionType.rightToLeft,
          settings: settings,
        );
    }
    return null;
  }
}
