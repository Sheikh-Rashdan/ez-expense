import 'package:ez_expense/constants/colors.dart';
import 'package:ez_expense/constants/text_styles.dart';
import 'package:ez_expense/widgets/appbar_container.dart';
import 'package:ez_expense/widgets/horizontal_list_view.dart';
import 'package:ez_expense/widgets/outlined_labelled_column.dart';
import 'package:ez_expense/widgets/primary_button.dart';
import 'package:ez_expense/widgets/single_value_donut_chart.dart';
import 'package:ez_expense/widgets/sliver_page_column.dart';
import 'package:ez_expense/widgets/translucent_outlined_button.dart';
import 'package:ez_expense/widgets/vertical_list_view.dart';
import 'package:ez_expense/widgets/white_card.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPageColumn(
      title: "Ez Expense",
      children: [
        AppbarContainer(child: _HomePageAppbarWidget()),
        SizedBox(height: 14),
        Padding(
          padding: const EdgeInsetsGeometry.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 14,
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
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  spacing: 10,
                  children: [
                    HorizontalListView(
                      height: 40,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        // TODO: refactor params to take only expenseTemplate object
                        return _ExpenseTemplateChip(
                          label: "$index" * 5,
                          color: Colors.pink,
                          onTap: () {},
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TranslucentOutlinedButton(
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
                    ),
                  ],
                ),
              ),
              WhiteCard(
                borderRadius: 18,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        decoration: BoxDecoration(
                          color: KColors.purpleSecondary2,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 8,
                        ),
                        child: Column(
                          children: [
                            Text("Last 7 Days", style: KTextStyles.regular16),
                            FittedBox(
                              child: Text(
                                "₹ 550",
                                style: KTextStyles.regular28,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(flex: 5, child: _WeekBarChart()),
                  ],
                ),
              ),
              OutlinedLabelledColumn(
                label: "Recent Expenses",
                iconData: Icons.history_rounded,
                onTap: () {},
                children: [
                  VerticalListView(
                    height: 240,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return _RecentExpenseCard();
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 12),
      ],
    );
  }
}

class _RecentExpenseCard extends StatelessWidget {
  const _RecentExpenseCard();

  // TODO: take parameter as Expense and change display values

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      richMessage: WidgetSpan(
        child: Text(
          "Aldo's" * 100, // MARK: description
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      verticalOffset: 10,
      preferBelow: false,
      triggerMode: TooltipTriggerMode.tap,
      child: SizedBox(
        height: 50,
        child: ListTile(
          textColor: KColors.grayLightText,
          title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "Breakfast", // MARK: category name
                    style: KTextStyles.regular22.copyWith(color: Colors.pink),
                  ),
                  TextSpan(text: " • ", style: KTextStyles.regular22),
                  TextSpan(
                    text: "07/08/26",
                    style: KTextStyles.regular12,
                  ), // MARK: date
                ],
              ),
            ),
          ),
          leading: Icon(
            Icons.restaurant_rounded, // MARK: category icon
            size: KTextStyles.regular28.fontSize!,
            color: Colors.pink,
          ),
          trailing: Text("₹ 65", style: KTextStyles.regular22), // MARK: amount
        ),
      ),
    );
  }
}

class _WeekBarChart extends StatefulWidget {
  const _WeekBarChart();

  @override
  State<_WeekBarChart> createState() => _WeekBarChartState();
}

class _WeekBarChartState extends State<_WeekBarChart> {
  int? selectedGroup;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: BarChart(
        BarChartData(
          maxY: 7 * 1.2,
          borderData: FlBorderData(show: false),
          titlesData: FlTitlesData(
            leftTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            rightTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            topTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: KTextStyles.regular12.fontSize!,
                getTitlesWidget: (value, meta) => Text(
                  value.toInt().toString(), // TODO: add day name logic
                  style: KTextStyles.medium10.copyWith(
                    color: KColors.grayLightText,
                  ),
                ),
              ),
            ),
          ),
          gridData: const FlGridData(show: false),
          alignment: BarChartAlignment.spaceBetween,
          barTouchData: BarTouchData(
            handleBuiltInTouches: false,
            touchCallback: (event, response) {
              if (event is FlTapDownEvent && response?.spot != null) {
                setState(() {
                  final index = response!.spot!.touchedBarGroupIndex;
                  selectedGroup = selectedGroup == index ? null : index;
                });
              }
            },
            touchTooltipData: BarTouchTooltipData(
              getTooltipColor: (group) =>
                  KColors.yellowSecondary2.withValues(alpha: 0.75),
              getTooltipItem: (group, groupIndex, rod, rodIndex) =>
                  BarTooltipItem(
                    "₹ ${rod.toY.toStringAsFixed(2)}",
                    KTextStyles.regular12,
                  ),
              tooltipPadding: const EdgeInsets.only(left: 4, right: 4, top: 2),
            ),
          ),
          barGroups: <double>[3, 6, 1, 2, 4, 6, 7].asMap().entries.map((entry) {
            final int index = entry.key;
            final double value = entry.value;
            return BarChartGroupData(
              x: index,
              barRods: [
                BarChartRodData(
                  toY: value,
                  color: KColors.purpleSecondary2,
                  backDrawRodData: BackgroundBarChartRodData(
                    show: true,
                    color: KColors.neutralBackground,
                    toY: 7 * 1.15,
                  ),
                  width: 10,
                ),
              ],
              showingTooltipIndicators: selectedGroup == index ? [0] : [1],
            );
          }).toList(),
        ),
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
