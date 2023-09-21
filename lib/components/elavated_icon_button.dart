import 'package:flutter/material.dart';

class ElevatedIconButton extends StatelessWidget {
  final String label;
  final Color foregroundColor = Colors.black;
  final Color backgroundColor = Colors.white;
  final double fontSize = 14;
  final FontWeight fontWeight = FontWeight.bold;
  final bool disabled;
  final Function? onPressed;
  final double boderWidth = 2;
  final Color boderColor = Colors.black;
  final IconData iconData = Icons.sunny;

  const ElevatedIconButton({
    super.key,
    required this.label,
    required this.disabled,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        foregroundColor: foregroundColor,
        backgroundColor: backgroundColor,
        textStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
        shape: StadiumBorder(
          side: BorderSide(
            width: boderWidth,
            color: boderColor,
          ),
        ),
      ),
      onPressed: disabled ? null : () => onPressed,
      icon: Icon(iconData),
      label: Text(label),
    );
  }
}
