import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projekt_grupowy/bloc/auth_bloc/auth_bloc.dart';
import 'package:projekt_grupowy/bloc/productsbloc/products_bloc.dart';
import 'package:projekt_grupowy/main.dart';
import 'package:projekt_grupowy/screens/auth/login_screen.dart';
import 'package:projekt_grupowy/screens/warehouse.dart';
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
    var accessToken = prefs.getString('access_token');
    isUserLoggedIn = accessToken == null || accessToken == "";
    if (isUserLoggedIn) {
      Navigator.of(navigatorKey.currentContext!).pushNamed(
        LoginScreen.routeName,
        arguments: BlocProvider.of<AuthBloc>(navigatorKey.currentContext!),
      );
    } else {
      List<Object> list = List.empty(growable: true);
      list.add(BlocProvider.of<AuthBloc>(navigatorKey.currentContext!));
      list.add(BlocProvider.of<ProductsBloc>(navigatorKey.currentContext!));
      Navigator.of(navigatorKey.currentContext!).pushNamed(
        Warehouse.routeName,
        arguments: list,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, stateA) {
        if (stateA is AuthLogged) {
          setup();
        }
        if (stateA is AuthLoggedOut) {
          setup();
        }
      },
      builder: (context, stateA) {
        return Stack(
          children: [
            stateA is AuthLoading ? const Loader() : const SizedBox(),
            Scaffold(
              body: Center(
                child: InkWell(
                    onTap: () => setup(), child: const Text("Not Logged in")),
              ),
            ),
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
