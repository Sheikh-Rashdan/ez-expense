import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class SingleValueDonutChart extends StatelessWidget {
  const SingleValueDonutChart({super.key, required this.fraction});

  final double fraction;

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        centerSpaceRadius: 30,
        sectionsSpace: 0,
        startDegreeOffset: -90,
        sections: [
          PieChartSectionData(
            value: fraction,
            color: Colors.white,
            cornerRadius: 100,
            showTitle: false,
            radius: 15,
          ),
          PieChartSectionData(
            value: 1 - fraction,
            color: Colors.white.withAlpha(80),
            radius: 15,
            showTitle: false,
          ),
        ],
      ),
    );
  }
}
