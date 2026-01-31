import 'package:flutter/material.dart';

class button extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const button({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
      child: Text(text),
    );
  }
}
