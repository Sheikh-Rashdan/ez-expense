import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({
    super.key,
    required this.height,
    required this.itemCount,
    required this.itemBuilder,
    this.padding = const EdgeInsets.symmetric(horizontal: 10),
    this.spacing = 5,
  });

  final double height;
  final int itemCount;
  final Widget? Function(BuildContext context, int index) itemBuilder;
  final EdgeInsets padding;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        padding: padding,
        separatorBuilder: (context, index) => SizedBox(width: spacing),
        itemCount: itemCount,
        itemBuilder: itemBuilder,
      ),
    );
  }
}
