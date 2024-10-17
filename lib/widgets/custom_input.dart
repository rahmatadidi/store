import 'package:fe_store/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final TextEditingController controller;
  final double width;
  final double height;
  final bool isPassword;
  final String hintText;
  final TextInputType inputType;

  const Input(
      {super.key,
      this.width = 100,
      this.height = 50,
      this.isPassword = false,
      this.hintText = "",
      this.inputType = TextInputType.text,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        keyboardType: inputType,
        style: const TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            fillColor: AppTheme.secondaryColor,
            hintStyle: const TextStyle(color: AppTheme.textColorAccent),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)))),
      ),
    );
  }
}
