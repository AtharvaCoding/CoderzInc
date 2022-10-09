import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieChatPage extends StatelessWidget {
  const PieChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData("10/10/10", 50, 15, 30, 5),
      ChartData("11/10/10", 60, 15, 20, 5),
      ChartData("12/10/10", 70, 15, 10, 5),
      ChartData("13/10/10", 15, 50, 5, 30),
    ];

    Map<String, double> dataMap = {
      "Meeting": 50,
      "Break": 15,
      "Work": 30,
      "Others": 5,
    };
    return Scaffold(
      appBar: AppBar(
        title: Text("Charts Page"),
        centerTitle: true,
        backgroundColor: Colors.blue[400],
        brightness: Brightness.dark,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.blue[200],
          child: Column(
            children: [
              PieChart(
                dataMap: dataMap,
                chartRadius: MediaQuery.of(context).size.width / 1.9,
                chartValuesOptions: ChartValuesOptions(
                  showChartValuesInPercentage: true,
                ),
              ),
              SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                series: <ChartSeries>[
                  StackedColumnSeries<ChartData, String>(
                      dataSource: chartData,
                      xValueMapper: (ChartData ch, _) => ch.x,
                      yValueMapper: (ChartData ch, _) => ch.y1),
                  StackedColumnSeries<ChartData, String>(
                      dataSource: chartData,
                      xValueMapper: (ChartData ch, _) => ch.x,
                      yValueMapper: (ChartData ch, _) => ch.y2),
                  StackedColumnSeries<ChartData, String>(
                      dataSource: chartData,
                      xValueMapper: (ChartData ch, _) => ch.x,
                      yValueMapper: (ChartData ch, _) => ch.y3),
                  StackedColumnSeries<ChartData, String>(
                      dataSource: chartData,
                      xValueMapper: (ChartData ch, _) => ch.x,
                      yValueMapper: (ChartData ch, _) => ch.y4),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ChartData {
  final String x;
  final int y1;
  final int y2;
  final int y3;
  final int y4;

  ChartData(this.x, this.y1, this.y2, this.y3, this.y4);
}
