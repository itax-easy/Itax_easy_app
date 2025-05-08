import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Testscreen2 extends StatelessWidget {
  final double principalAmount;
  final double totalEarned;

  const Testscreen2({
    super.key,
    required this.principalAmount,
    required this.totalEarned,
  });

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        startDegreeOffset: 180,
        sectionsSpace: 0,
        centerSpaceRadius: 0,
        sections: [
          PieChartSectionData(
            value: principalAmount,
            color: Colors.blue,
            title: 'Principal',
            radius: 60,
            titleStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          PieChartSectionData(
            value: totalEarned,
            color: Colors.green,
            title: 'Interest',
            radius: 60,
            titleStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          // Fill remaining 180° if needed (optional for visual balance)
          PieChartSectionData(
            value: 0, // Optional filler to maintain chart structure
            color: Colors.transparent,
            showTitle: false,
          ),
        ],
      ),
    );
  }
}
