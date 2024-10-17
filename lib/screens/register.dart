import 'package:fe_store/theme/app_theme.dart';
import 'package:fe_store/widgets/custom_button.dart';
import 'package:fe_store/widgets/custom_input.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

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
                child: Column(
                  children: [
                    Center(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
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
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Email",
                                  style: TextStyle(color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Input(
                                  controller: TextEditingController(),
                                  width: 500,
                                  hintText: "Email",
                                  isPassword: true,
                                ),
                                const SizedBox(
                                  height: 20,
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
                                const SizedBox(
                                  height: 30,
                                ),
                                PrimaryButton(
                                  onPressed: () {},
                                  width: 500,
                                  text: "Register",
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Already have an account?",
                                      style: TextStyle(
                                          color: AppTheme.textColorAccent),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
