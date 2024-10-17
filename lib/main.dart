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
    TextEditingController controller = TextEditingController();
    return MaterialApp(
        home: Scaffold(
      body: Column(
        children: [
          PrimaryButton(
            text: "TestButton",
            onPressed: () {},
          ),
          SecondaryButton(text: "Test2", onPressed: () {}),
          Input(
            controller: controller,
            width: 500,
            height: 500,
            hintText: "username",
          )
        ],
      ),
    ));
  }
}
