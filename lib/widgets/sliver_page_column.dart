import 'package:flutter/material.dart';

class SliverPageColumn extends StatelessWidget {
  const SliverPageColumn({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: ClampingScrollPhysics(),
      slivers: [
        SliverAppBar(title: Text("Ez Expense")),
        SliverList(delegate: SliverChildListDelegate(children)),
      ],
    );
  }
}
