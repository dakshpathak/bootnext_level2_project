import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'chartValues.dart';

//This  is a lineChartWidget which will return a linechart.

class LineChartWidget extends StatelessWidget {
  final List<Price> points;

  const LineChartWidget(this.points, {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return LineChart(LineChartData(lineBarsData: [
      LineChartBarData(
          spots: points.map((point) => FlSpot(point.x, point.y)).toList(),
          isCurved: false,
          dotData: const FlDotData(show: true))
    ]));
  }
}
