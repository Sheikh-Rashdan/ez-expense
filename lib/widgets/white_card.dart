import 'package:ez_expense/constants/colors.dart';
import 'package:flutter/material.dart';

class WhiteCard extends StatelessWidget {
  const WhiteCard({
    super.key,
    this.child,
    this.borderRadius = 10,
    this.padding = const EdgeInsets.all(10),
  });

  final Widget? child;
  final double borderRadius;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: KColors.cardLight,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: const [
          BoxShadow(blurRadius: 8, offset: Offset(0, 2), color: KColors.shadow),
        ],
      ),
      padding: padding,
      child: child,
    );
  }
}
