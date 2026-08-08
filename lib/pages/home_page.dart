import 'package:ez_expense/constants/text_styles.dart';
import 'package:ez_expense/widgets/appbar_container.dart';
import 'package:ez_expense/widgets/primary_button.dart';
import 'package:ez_expense/widgets/single_value_donut_chart.dart';
import 'package:ez_expense/widgets/sliver_page_column.dart';
import 'package:ez_expense/widgets/translucent_outlined_button.dart';
import 'package:ez_expense/widgets/white_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SliverPageColumn(
        scrollable: false,
        children: [
          AppbarContainer(child: _HomePageAppbarWidget()),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsetsGeometry.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: 12,
              children: [
                PrimaryButton(
                  label: Text("Add Expense", style: KTextStyles.regular22),
                  icon: Icon(
                    Icons.add_circle_rounded,
                    size: KTextStyles.regular22.fontSize,
                  ),
                  onPressed: () {},
                ),
                WhiteCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TranslucentOutlinedButton(
                        label: Text(
                          "More Templates",
                          style: KTextStyles.regular22,
                        ),
                        icon: Icon(
                          Icons.dashboard_customize_rounded,
                          size: KTextStyles.regular22.fontSize,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ExpenseTemplateChip extends StatelessWidget {
  const _ExpenseTemplateChip({
    required this.label,
    required this.color,
    this.onTap,
  });

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
            side: BorderSide(width: 3, color: KColors.highlightColor),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.center,
        child: Text(label, style: KTextStyles.medium16),
      ),
    );
  }
}

class _HomePageAppbarWidget extends StatelessWidget {
  const _HomePageAppbarWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                child: Text("₹ 1,346/3,000", style: KTextStyles.medium36),
              ),
              Text.rich(
                TextSpan(
                  style: KTextStyles.light12,
                  children: [
                    TextSpan(text: "Spend up to "),
                    TextSpan(text: "₹965", style: KTextStyles.bold12),
                    TextSpan(
                      text: " each week to stay within your expense target.",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 10),
        SizedBox(
          height: 80,
          width: 80,
          child: Stack(
            fit: StackFit.expand,
            children: [
              SingleValueDonutChart(fraction: 0.45),
              Align(
                alignment: Alignment.center,
                child: Text("45%", style: KTextStyles.regular16),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
