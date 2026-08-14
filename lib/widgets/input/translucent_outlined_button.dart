import 'package:ez_expense/constants/colors.dart';
import 'package:flutter/material.dart';

class TranslucentOutlinedButton extends StatelessWidget {
  const TranslucentOutlinedButton({
    super.key,
    required this.label,
    this.icon,
    this.color = KColors.purpleSecondary2,
    this.onPressed,
  });

  final Widget label;
  final Widget? icon;
  final Color color;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        side: BorderSide(width: 2, color: color),
        backgroundColor: color.withAlpha(25),
        foregroundColor: color,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      ),
      onPressed: onPressed,
      label: label,
      icon: icon,
      iconAlignment: IconAlignment.end,
    );
  }
}
