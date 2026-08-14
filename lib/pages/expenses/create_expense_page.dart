import 'package:ez_expense/constants/page_paddings.dart';
import 'package:ez_expense/widgets/input/expense_template_card.dart';
import 'package:flutter/material.dart';

class CreateExpensePage extends StatelessWidget {
  const CreateExpensePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create Expense")),
      body: Padding(
        padding: const EdgeInsetsGeometry.symmetric(
          horizontal: KPagePaddings.horizontalMargin,
          vertical: KPagePaddings.columnSpacing,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: KPagePaddings.columnSpacing,
          children: [],
        ),
      ),
    );
  }
}
