import 'package:flutter/material.dart';

class ElevatedRectangleButton extends StatelessWidget {
  final String label;
  final Color foregroundColor = Colors.black;
  final Color backgroundColor = Colors.white;
  final double fontSize = 14;
  final FontWeight fontWeight = FontWeight.bold;
  final bool disabled;
  final Function? onPressed;
  final double boderWidth = 2;
  final Color boderColor = Colors.black;
  final double boderRadius = 8;

  const ElevatedRectangleButton({
    super.key,
    required this.label,
    required this.disabled,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: foregroundColor,
        backgroundColor: backgroundColor,
        textStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: boderWidth,
            color: boderColor,
          ),
          borderRadius: BorderRadius.circular(boderRadius),
        ),
      ),
      onPressed: disabled ? null : () => onPressed,
      child: Text(label),
    );
  }
}
