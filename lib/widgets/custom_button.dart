import 'package:flutter/material.dart';
import "../theme/app_theme.dart";

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final double padding;

  const PrimaryButton(
      {super.key,
      this.text = "PrimaryButton",
      required this.onPressed,
      this.width = 200.0,
      this.height = 50,
      this.padding = 10});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (onPressed),
        style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: AppTheme.accentColor,
            padding: EdgeInsets.all(padding),
            minimumSize: Size(width, height)),
        child: Text(text));
  }
}

class SecondaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final double padding;

  const SecondaryButton(
      {super.key,
      this.text = "SecondaryButton",
      required this.onPressed,
      this.width = 200.0,
      this.height = 50,
      this.padding = 10});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (onPressed),
        style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: AppTheme.secondaryColor,
            padding: EdgeInsets.all(padding),
            minimumSize: Size(width, height)),
        child: Text(text));
  }
}
