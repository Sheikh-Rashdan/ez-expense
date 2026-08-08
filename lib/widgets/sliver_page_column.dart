import 'package:flutter/material.dart';

class SliverPageColumn extends StatelessWidget {
  const SliverPageColumn({
    super.key,
    required this.children,
    this.scrollable = true,
  });

  final List<Widget> children;
  final bool scrollable;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: scrollable
          ? const ClampingScrollPhysics()
          : const NeverScrollableScrollPhysics(),
      slivers: [
        SliverAppBar(title: const Text("Ez Expense")),
        SliverList(delegate: SliverChildListDelegate(children)),
      ],
    );
  }
}
