import 'package:flutter/material.dart';

class CalcOpButton extends StatelessWidget {
  CalcOpButton({
    required this.text,
    required this.color,
    required this.onTap,
  });
  final String text;
  final Color color;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        child: Text(text),
        onPressed: onTap,
      ),
    );
  }
}
