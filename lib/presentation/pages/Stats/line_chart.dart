import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:trackexpences/app/config/app_colors.dart';

class LineChartPage extends StatefulWidget {
  const LineChartPage({super.key});

  @override
  State<LineChartPage> createState() => _LineChartState();
}
  @override
   class _LineChartState extends State<LineChartPage> {
    List<Color> gradientColors = [
      AppColors.blue,
      AppColors.blueLight,
    ];

    bool showAvg = false;

    @override
    Widget build(BuildContext context) {
      return AspectRatio(
            aspectRatio: 1.3,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 18,
                left: 18,
                top: 40,
                bottom: 0,
              ),
              child: LineChart(
                showAvg ? avgData() : mainData(),
              ),
            ),
          );
    }

    Widget bottomTitleWidgets(double value, TitleMeta meta) {
      const style = TextStyle(
        fontSize: 12,
      );
      Widget text;
      switch (value.toInt()) {
        case 0:
          text = const Text('', style: style);
          break;
        case 1:
          text = const Text('1', style: style);
          break;
        case 2:
          text = const Text('2', style: style);
          break;
        case 3:
          text = const Text('3', style: style);
          break;
        case 4:
          text = const Text('4', style: style);
          break;
        case 5:
          text = const Text('5', style: style);
          break;
        case 6:
          text = const Text('6', style: style);
          break;
        case 7:
          text = const Text('7', style: style);
          break;
        case 8:
          text = const Text('8', style: style);
          break;
        case 9:
          text = const Text('9', style: style);
          break;
        case 10:
          text = const Text('10', style: style);
          break;
        case 11:
          text = const Text('11', style: style);
          break;
        case 12:
          text = const Text('12', style: style);
          break;
        case 13:
          text = const Text('13', style: style);
          break;
        case 14:
          text = const Text('14', style: style);
          break;
        default:
          text = const Text('', style: style);
          break;
      }

      return SideTitleWidget(
        axisSide: meta.axisSide,
        child: text,
      );
    }

    LineChartData mainData() {
      return LineChartData(
        gridData: FlGridData(
          show: true,
          drawHorizontalLine: false,
          drawVerticalLine: true,
          verticalInterval: 1,
          getDrawingVerticalLine: (value) {
            return const FlLine(
              color: Color(0xffEFEFEF),
              strokeWidth: 5,
            );
          },
        ),
        titlesData: FlTitlesData(
          show: true,
          rightTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          topTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 30,
              interval: 1,
              getTitlesWidget: bottomTitleWidgets,
            ),
          ),
          leftTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false,),
          ),
        ),
        borderData: FlBorderData(
          show: false,
          border: Border.all(color: const Color(0xff37434d)),
        ),
        minX: 0,
        maxX: 15,
        minY: 0,
        maxY: 8,
        lineBarsData: [
          LineChartBarData(
            spots: const [
              FlSpot(1, 2),
              FlSpot(2, 4),
              FlSpot(3, 3),
              FlSpot(4, 2),
              FlSpot(5, 5),
              FlSpot(6, 5),
              FlSpot(11, 4),
            ],
            gradient: LinearGradient(
              colors: gradientColors,
            ),
            barWidth:2.5,
          ),
        ],
      );
    }

    LineChartData avgData() {
      return LineChartData(
        lineTouchData: const LineTouchData(enabled: false),
        titlesData: FlTitlesData(
          show: true,
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 30,
              getTitlesWidget: bottomTitleWidgets,
              interval: 1,
            ),
          ),
          leftTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false,),
          ),
          topTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          rightTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
        ),

      );
    }
  }
