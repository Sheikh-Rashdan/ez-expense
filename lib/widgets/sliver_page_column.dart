import 'package:flutter/material.dart';

class SliverPageColumn extends StatelessWidget {
  const SliverPageColumn({
    super.key,
    required this.title,
    required this.children,
    this.scrollable = true,
  });

  final String title;
  final List<Widget> children;
  final bool scrollable;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: scrollable
          ? const ClampingScrollPhysics()
          : const NeverScrollableScrollPhysics(),
      slivers: [
        SliverAppBar(title: Text(title)),
        SliverList(delegate: SliverChildListDelegate(children)),
      ],
    );
  }
}
