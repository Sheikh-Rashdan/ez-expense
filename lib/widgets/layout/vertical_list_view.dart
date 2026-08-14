import 'package:ez_expense/constants/colors.dart';
import 'package:flutter/material.dart';

class VerticalListView extends StatelessWidget {
  const VerticalListView({
    super.key,
    required this.height,
    required this.itemCount,
    required this.itemBuilder,
    this.separatorBuilder,
    this.padding = const EdgeInsets.symmetric(vertical: 10),
  });

  final double height;
  final int itemCount;
  final Widget? Function(BuildContext context, int index) itemBuilder;
  final Widget Function(BuildContext context, int index)? separatorBuilder;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        itemCount: itemCount,
        padding: padding,
        separatorBuilder: separatorBuilder == null
            ? (context, index) => const Divider(
                color: KColors.dividerLight,
                indent: 20,
                endIndent: 20,
              )
            : separatorBuilder!,
        itemBuilder: itemBuilder,
      ),
    );
  }
}
