import 'package:flutter/material.dart';

class FlootingActionButton extends StatelessWidget {
  final String label;
  final bool disabled;
  final Function? onPressed;

  const FlootingActionButton({
    super.key,
    required this.label,
    required this.disabled,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FlootingActionButton(
      onPressed: disabled ? null : () => onPressed,
      label: label,
      disabled: disabled,
    );
  }
}
