import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:trackexpences/app/config/app_colors.dart';


class BarChartPage extends StatefulWidget{
  const BarChartPage({super.key});

  @override
  State<BarChartPage> createState() => _BarChartState();
}
class _BarChartState extends State<BarChartPage> {
  @override
  Widget build(BuildContext context) {
  return BarChart(
    BarChartData(
      barTouchData: barTouchData,
      titlesData: titlesData,
      borderData: borderData,
      barGroups: barGroups,
      gridData: const FlGridData(show: false),
      alignment: BarChartAlignment.spaceAround,
      maxY: 20,
    ),
  );
}

BarTouchData get barTouchData => BarTouchData(
  enabled: false,
  touchTooltipData: BarTouchTooltipData(
    tooltipBgColor: Colors.transparent,
    tooltipPadding: EdgeInsets.zero,
    tooltipMargin: 8,
    getTooltipItem: (
        BarChartGroupData group,
        int groupIndex,
        BarChartRodData rod,
        int rodIndex,
        ) {
      return BarTooltipItem(
        rod.toY.round().toString(),
         TextStyle(
          color: AppColors.blueLight,
          fontWeight: FontWeight.bold,
        ),
      );
    },
  ),
);

Widget getTitles(double value, TitleMeta meta) {
  final style = TextStyle(
    color: AppColors.blue,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );
  String text;
  switch (value.toInt()) {
    case 0:
      text = 'Mn';
      break;
    case 1:
      text = 'Te';
      break;
    case 2:
      text = 'Wd';
      break;
    case 3:
      text = 'Tu';
      break;
    case 4:
      text = 'Fr';
      break;
    case 5:
      text = 'St';
      break;
    case 6:
      text = 'Sn';
      break;
    default:
      text = '';
      break;
  }
  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 4,
    child: Text(text, style: style),
  );
}

FlTitlesData get titlesData => FlTitlesData(
  show: true,
  bottomTitles: AxisTitles(
    sideTitles: SideTitles(
      showTitles: true,
      reservedSize: 30,
      getTitlesWidget: getTitles,
    ),
  ),
  leftTitles: const AxisTitles(
    sideTitles: SideTitles(showTitles: false),
  ),
  topTitles: const AxisTitles(
    sideTitles: SideTitles(showTitles: false),
  ),
  rightTitles: const AxisTitles(
    sideTitles: SideTitles(showTitles: false),
  ),
);

FlBorderData get borderData => FlBorderData(
  show: false,
);

LinearGradient get _barsGradient => LinearGradient(
  colors: [
    AppColors.blueLight,
    AppColors.blue,
  ],
  begin: Alignment.bottomCenter,
  end: Alignment.topCenter,
);

List<BarChartGroupData> get barGroups => [
  BarChartGroupData(
    x: 0,
    barRods: [
      BarChartRodData(
        toY: 8,
        gradient: _barsGradient,
      )
    ],
    showingTooltipIndicators: [0],
  ),
  BarChartGroupData(
    x: 1,
    barRods: [
      BarChartRodData(
        toY: 10,
        gradient: _barsGradient,
      )
    ],
    showingTooltipIndicators: [0],
  ),
  BarChartGroupData(
    x: 2,
    barRods: [
      BarChartRodData(
        toY: 14,
        gradient: _barsGradient,
      )
    ],
    showingTooltipIndicators: [0],
  ),
  BarChartGroupData(
    x: 3,
    barRods: [
      BarChartRodData(
        toY: 15,
        gradient: _barsGradient,
      )
    ],
    showingTooltipIndicators: [0],
  ),
  BarChartGroupData(
    x: 4,
    barRods: [
      BarChartRodData(
        toY: 13,
        gradient: _barsGradient,
      )
    ],
    showingTooltipIndicators: [0],
  ),
  BarChartGroupData(
    x: 5,
    barRods: [
      BarChartRodData(
        toY: 10,
        gradient: _barsGradient,
      )
    ],
    showingTooltipIndicators: [0],
  ),
  BarChartGroupData(
    x: 6,
    barRods: [
      BarChartRodData(
        toY: 16,
        gradient: _barsGradient,
      )
    ],
    showingTooltipIndicators: [0],
  ),
];
}
