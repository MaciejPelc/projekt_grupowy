import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:projekt_grupowy/models/response_user_model.dart';
import 'package:projekt_grupowy/screens/auth/login_screen.dart';

void _registerServices() {
  // GetIt.I.registerSingleton<AdsService>(AdsService());
}

void _registerModels() {
  GetIt.I
      .registerFactoryParam<ResponseUserModel, Map<String, dynamic>, String?>(
          (param1, param2) => ResponseUserModel.fromJson(param1));
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
