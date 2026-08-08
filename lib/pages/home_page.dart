import 'package:ez_expense/constants/text_styles.dart';
import 'package:ez_expense/widgets/appbar_container.dart';
import 'package:ez_expense/widgets/primary_button.dart';
import 'package:ez_expense/widgets/single_value_donut_chart.dart';
import 'package:ez_expense/widgets/sliver_page_column.dart';
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
              children: [
                PrimaryButton(
                  label: Text("Add Expense", style: KTextStyles.regular22),
                  icon: Icon(
                    Icons.add_circle_rounded,
                    size: KTextStyles.regular22.fontSize,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
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
