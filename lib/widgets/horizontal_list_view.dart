import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({
    super.key,
    required this.height,
    required this.itemCount,
    required this.itemBuilder,
    this.separatorBuilder,
    this.padding = const EdgeInsets.symmetric(horizontal: 10),
  });

  final double height;
  final int itemCount;
  final Widget? Function(BuildContext context, int index) itemBuilder;
  final Widget Function(BuildContext context, int index)? separatorBuilder;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        padding: padding,
        separatorBuilder: separatorBuilder == null
            ? (context, index) => SizedBox(width: 5)
            : separatorBuilder!,
        itemCount: itemCount,
        itemBuilder: itemBuilder,
      ),
    );
  }
}
