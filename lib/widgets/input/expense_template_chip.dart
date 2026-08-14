import 'package:ez_expense/constants/colors.dart';
import 'package:ez_expense/constants/text_styles.dart';
import 'package:flutter/material.dart';

class ExpenseTemplateChip extends StatelessWidget {
  const ExpenseTemplateChip({
    super.key,
    required this.label,
    required this.color,
    this.onTap,
  });

  // TODO: refactor params to take only expenseTemplate object
  final String label;
  final Color color;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: ShapeDecoration(
          color: color,
          shape: StadiumBorder(
            side: BorderSide(width: 3, color: KColors.highlight),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.center,
        child: Text(label, style: KTextStyles.medium16),
      ),
    );
  }
}
