import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:projekt_grupowy/bloc/productsbloc/products_bloc.dart';
import 'package:projekt_grupowy/models/items.dart';
import 'package:projekt_grupowy/models/post_login_model.dart';
import 'package:projekt_grupowy/models/response_product_model.dart';
import 'package:projekt_grupowy/models/response_user_model.dart';
import 'package:projekt_grupowy/routing/app_router.dart';
import 'package:projekt_grupowy/bloc/auth_bloc/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projekt_grupowy/services/project_service.dart';

void _registerServices() {
  GetIt.I.registerSingleton<ProjectService>(ProjectService());
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
int test = 0;

void _registerModels() {
  GetIt.I
      .registerFactoryParam<ResponseUserModel, Map<String, dynamic>, String?>(
          (param1, param2) => ResponseUserModel.fromJson(param1));
  GetIt.I.registerFactoryParam<PostLoginModel, Map<String, dynamic>, String?>(
      (param1, param2) => PostLoginModel.fromJson(param1));
  GetIt.I.registerFactoryParam<ResponseProductModel, Map<String, dynamic>,
      String?>((param1, param2) => ResponseProductModel.fromJson(param1));
  // GetIt.I.registerFactoryParam<Items, Map<String, dynamic>, String?>(
  //     (param1, param2) => Items.fromJson(param1));
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  _registerModels();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsBloc(),
      child: BlocProvider(
        create: (context) => AuthBloc(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          navigatorKey: navigatorKey,
          title: 'Magazyn',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          onGenerateRoute: AppRouter.generateRoute,
        ),
      ),
    );
  }
}
