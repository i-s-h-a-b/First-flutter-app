import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(String text, {super.key}): outputText = text;

  String outputText;

  @override
  Widget build(context) {
    return const Text(
      outputText,
      style: TextStyle(
        color: Colors.red,
        fontSize: 28,
      ),
    );
  }
}
