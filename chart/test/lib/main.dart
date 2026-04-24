import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chart Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ChartPage(),
    );
  }
}

class ChartPage extends StatelessWidget {
  const ChartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chart with 4 Different Values'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BarChart(
          BarChartData(
            alignment: BarChartAlignment.spaceEvenly,
            titlesData: FlTitlesData(show: true),
            borderData: FlBorderData(show: true),
            gridData: FlGridData(show: true),
            barGroups: [
              BarChartGroupData(x: 0, barRods: [
                BarChartRodData(toY: 5, color: Colors.blue),
              ]),
              BarChartGroupData(x: 1, barRods: [
                BarChartRodData(toY: 8, color: Colors.green),
              ]),
              BarChartGroupData(x: 2, barRods: [
                BarChartRodData(toY: 3, color: Colors.red),
              ]),
              BarChartGroupData(x: 3, barRods: [
                BarChartRodData(toY: 7, color: Colors.orange),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
