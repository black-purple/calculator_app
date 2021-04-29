import 'package:flutter/material.dart';

class CalcOpButton extends StatelessWidget {
  CalcOpButton(
      {required this.color,
      required this.icon,
      required this.onTap,
      required this.iconSize});
  final double iconSize;
  final IconData icon;
  final Color color;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        child: Icon(
          icon,
          color: color,
          size: iconSize,
        ),
        onPressed: onTap,
      ),
    );
  }
}
