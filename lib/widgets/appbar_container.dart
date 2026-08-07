import 'package:ez_expense/constants/colors.dart';
import 'package:flutter/material.dart';

class AppbarContainer extends StatelessWidget {
  const AppbarContainer({
    super.key,
    this.child,
    this.topPadding = 10,
    this.bottomPadding = 30,
  });

  final Widget? child;
  final double topPadding;
  final double bottomPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          colors: KColors.greenGradientList,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        shape: RoundedSuperellipseBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(50, 30),
          ),
        ),
      ),
      padding: EdgeInsets.only(
        right: 24,
        left: 24,
        top: topPadding,
        bottom: bottomPadding,
      ),
      child: child,
    );
  }
}
