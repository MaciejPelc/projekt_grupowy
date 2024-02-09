import 'package:flutter/material.dart';
import 'package:projekt_grupowy/bloc/auth_bloc/auth_bloc.dart';
import 'package:projekt_grupowy/screens/main_screen.dart';
import 'package:projekt_grupowy/screens/auth/login_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:projekt_grupowy/screens/warehouse.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => const MainScreen(),
          settings: settings,
        );
      case LoginScreen.routeName:
        return PageTransition(
          child: LoginScreen(
            authBloc: settings.arguments as AuthBloc,
          ),
          type: PageTransitionType.rightToLeft,
          settings: settings,
        );
      case Warehouse.routeName:
        var list = settings.arguments as List;
        return PageTransition(
          child: Warehouse(
            authBloc: list[0],
            productsBloc: list[1],
          ),
          type: PageTransitionType.rightToLeft,
          settings: settings,
        );
    }
    return null;
  }
}
