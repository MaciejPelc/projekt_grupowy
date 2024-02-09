import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projekt_grupowy/bloc/auth_bloc/auth_bloc.dart';
import 'package:projekt_grupowy/main.dart';
import 'package:projekt_grupowy/screens/auth/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
    setup();
  }

  bool isUserLoggedIn = false;

  Future<void> setup() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    isUserLoggedIn = (prefs.getString('access_token') ?? "").isEmpty;
    if (isUserLoggedIn) {
      Navigator.of(navigatorKey.currentContext!).pushReplacementNamed(
          LoginScreen.routeName,
          arguments: BlocProvider.of<AuthBloc>(context));
    } else {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, stateA) {
        if (stateA == AuthLogged) {
          setup();
        }
      },
      builder: (context, stateA) {
        return Stack(
          children: [
            const Scaffold(
              body: Text("Not Logged in"),
            ),
            stateA is AuthLoading ? const Loader() : const SizedBox(),
          ],
        );
      },
    );
  }
}

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            color: Colors.purple[300]!.withOpacity(0.1),
            child: const CircularProgressIndicator(),
          ),
        )
      ],
    );
  }
}
