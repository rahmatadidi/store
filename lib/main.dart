import 'package:fe_store/theme/app_theme.dart';
import 'package:fe_store/widgets/custom_button.dart';
import 'package:fe_store/widgets/custom_input.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: AppTheme.primaryColor,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: const Text(
                  "LOGIN",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 2.0, color: Colors.white))),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                margin: const EdgeInsets.only(bottom: 30),
                child: const Column(
                  children: [
                    Center(
                      child: Text(
                        "Login Into Store",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 100),
                width: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "username",
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Input(
                      controller: TextEditingController(),
                      width: 500,
                      hintText: "username",
                    ),
                    const Text(
                      "Password",
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Input(
                      controller: TextEditingController(),
                      width: 500,
                      hintText: "Password",
                      isPassword: true,
                    ),
                    PrimaryButton(
                      onPressed: () {},
                      width: 500,
                      text: "Login",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Don't Have an account?",
                          style: TextStyle(color: AppTheme.textColorAccent),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SecondaryButton(
                        onPressed: () {}, text: "Register", width: 500)
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
