import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projekt_grupowy/auth_components/utlis/animations.dart';
import 'package:projekt_grupowy/auth_components/utlis/bg_data.dart';
import 'package:projekt_grupowy/auth_components/utlis/text_utils.dart';
import 'package:projekt_grupowy/bloc/auth_bloc/auth_bloc.dart';
import 'package:projekt_grupowy/helpers/regexp_helper.dart';
import 'package:projekt_grupowy/models/post_login_model.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({
    super.key,
    required this.authBloc,
  });
  static const String routeName = "/login_screen";
  AuthBloc authBloc;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int selectedIndex = 0;
  bool showOption = false;
  final _validateFormKey = GlobalKey<FormState>();
  final emailRegexp = RegExp(RegExpHelper.emailPattern);
  bool isLogin = true;
  // Controllers
  final TextEditingController _loginEmailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _registrationEmailController =
      TextEditingController();
  final TextEditingController _registrationPasswordController =
      TextEditingController();
  final TextEditingController _registrationRepeatPasswordController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _loginEmailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //todo lista do grafik
/*
      floatingActionButton: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: 49,
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
                child: showOption
                    ? ShowUpAnimation(
                        delay: 100,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: bgList.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedIndex = index;
                                  });
                                },
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: selectedIndex == index
                                      ? Colors.white
                                      : Colors.transparent,
                                  child: Padding(
                                    padding: const EdgeInsets.all(1),
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundImage: AssetImage(
                                        bgList[index],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                      )
                    : const SizedBox()),
            const SizedBox(
              width: 20,
            ),
            showOption
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        showOption = false;
                      });
                    },
                    child: const Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 30,
                    ))
                : GestureDetector(
                    onTap: () {
                      setState(() {
                        showOption = true;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(1),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(
                            bgList[selectedIndex],
                          ),
                        ),
                      ),
                    ),
                  )
          ],
        ),
      ),
      */
      body: isLogin ? loginScreen(context) : registrationScreen(context),
    );
  }

  void loginRegister() {
    setState(() {
      isLogin = !isLogin;
    });
  }

  List<Widget> authTile({
    required String title,
    required String validatorText,
    required IconData icon,
    required TextEditingController controller,
    required bool validate,
    bool obscureText = false,
  }) =>
      [
        TextUtil(
          text: title,
        ),
        Container(
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.white))),
          child: TextFormField(
            obscureText: obscureText,
            validator: (value) {
              if (validate) {
                return null;
              }
              print(validate);
              return validatorText;
            },
            controller: controller,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              suffixIcon: Icon(
                icon,
                color: Colors.white,
              ),
              fillColor: Colors.white,
              border: InputBorder.none,
            ),
          ),
        ),
        const Spacer(),
      ];

  Widget registrationScreen(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(bgList[selectedIndex]), fit: BoxFit.fill),
      ),
      alignment: Alignment.center,
      child: Container(
        height: 500,
        width: 330,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(15),
          color: Colors.black.withOpacity(0.1),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(
              filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Form(
                  key: _validateFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(),
                      Center(
                          child: TextUtil(
                        text: "Registration",
                        weight: true,
                        size: 30,
                      )),
                      const Spacer(),
                      ...authTile(
                          title: "Email",
                          validatorText: "Provide real email address",
                          icon: Icons.mail,
                          controller: _registrationEmailController,
                          validate: true
                          // (_registrationEmailController.text.length > 2),
                          ),
                      ...authTile(
                        icon: Icons.lock,
                        title: "Password",
                        validatorText:
                            "Provide longer password than 2 characters",
                        controller: _registrationPasswordController,
                        validate: true,
                        // (_registrationPasswordController.text.length > 2),
                        obscureText: true,
                      ),
                      ...authTile(
                        icon: Icons.lock,
                        title: "Repeat password",
                        validatorText:
                            "Password must be the same as repeat password",
                        controller: _registrationRepeatPasswordController,
                        obscureText: true,
                        validate: true,
                        // (_registrationRepeatPasswordController.text.length >
                        //         2 &&
                        //     _registrationRepeatPasswordController.text ==
                        //         _registrationPasswordController.text),
                      ),
                      InkWell(
                        onTap: () {
                          if (_validateFormKey.currentState!.validate()) {
                            PostLoginModel postLoginModel = PostLoginModel(
                              email: _registrationEmailController.text,
                              password: _registrationPasswordController.text,
                            );
                            BlocProvider.of<AuthBloc>(context).add(
                              AuthRegister(postLoginModel: postLoginModel),
                            );
                          }
                          _loginEmailController.text =
                              _registrationEmailController.text;
                          _passwordController.text =
                              _registrationPasswordController.text;
                          loginRegister();
                        },
                        child: Container(
                          height: 40,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          alignment: Alignment.center,
                          child: TextUtil(
                            text: "Register",
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () => loginRegister(),
                        child: Center(
                            child: TextUtil(
                          text: "You already have a account? LOGIN IN",
                          size: 12,
                          weight: true,
                        )),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }

  Widget loginScreen(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(bgList[selectedIndex]), fit: BoxFit.fill),
      ),
      alignment: Alignment.center,
      child: Container(
        height: 400,
        width: 330,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(15),
          color: Colors.black.withOpacity(0.1),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(
              filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Form(
                  key: _validateFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(),
                      Center(
                          child: TextUtil(
                        text: "Login",
                        weight: true,
                        size: 30,
                      )),
                      const Spacer(),
                      TextUtil(
                        text: "Email",
                      ),
                      Container(
                        // height: 35,
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.white))),
                        child: TextFormField(
                          validator: (value) {
                            if (_loginEmailController.text.length > 2) {
                              return null;
                            }
                            return "Provide real email address";
                          },
                          controller: _loginEmailController,
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            suffixIcon: Icon(
                              Icons.mail,
                              color: Colors.white,
                            ),
                            fillColor: Colors.white,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const Spacer(),
                      TextUtil(
                        text: "Password",
                      ),
                      Container(
                        // height: 35,
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.white))),
                        child: TextFormField(
                          validator: (value) {
                            if (_passwordController.text.length < 2) {
                              return "Provide longer password than 2 characters";
                            }
                            return null;
                          },
                          controller: _passwordController,
                          obscureText: true,
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            suffixIcon: Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                            fillColor: Colors.white,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          if (_validateFormKey.currentState!.validate()) {
                            PostLoginModel postLoginModel = PostLoginModel(
                              email: _loginEmailController.text,
                              password: _passwordController.text,
                            );
                            BlocProvider.of<AuthBloc>(context).add(
                              AuthLogin(postLoginModel: postLoginModel),
                            );
                          }
                        },
                        child: Container(
                          height: 40,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          alignment: Alignment.center,
                          child: TextUtil(
                            text: "Log In",
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () => loginRegister(),
                        child: Center(
                            child: TextUtil(
                          text: "Don't have a account REGISTER",
                          size: 12,
                          weight: true,
                        )),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
