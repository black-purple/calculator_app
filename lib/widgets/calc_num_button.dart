import 'package:flutter/material.dart';

class CalcNumButton extends StatelessWidget {
  CalcNumButton({
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
        child: Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: 30,
          ),
        ),
        onPressed: onTap,
      ),
    );
  }
}
