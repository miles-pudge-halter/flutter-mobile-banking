import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:mobile_banking/breakdown/breakdown_chart.dart';
import 'package:mobile_banking/statistics/widgets/bar_chart.dart';

class BreakdownPage extends StatefulWidget {
  const BreakdownPage({Key? key}) : super(key: key);

  @override
  State<BreakdownPage> createState() => _BreakdownPageState();
}

class _BreakdownPageState extends State<BreakdownPage> {
  int touchedIndex = -1;

  void changeTapIndex(int i) {
    setState(() {
      touchedIndex = i;
      debugPrint('Breakdownpage touch index: $touchedIndex');
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 16),
          Text(
            'Breakdown',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          BreakdownChart(tapIndex: touchedIndex, key: UniqueKey()),
          const SizedBox(height: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _showLegend('Bills & Utilities',
                  [Colors.orange.shade300, Colors.orange], () {changeTapIndex(1);}),
              _showLegend('Food & Beverages',
                  [Colors.blue.shade300, Colors.blue], () {changeTapIndex(0);}),
              _showLegend('Travel & Commute',
                  [Colors.pink.shade300, Colors.pink], () {changeTapIndex(4);}),
              _showLegend('Shopping',
                  [Colors.greenAccent.shade100, Colors.greenAccent], () {changeTapIndex(3);}),
              _showLegend('Others',
                  [Colors.deepPurple.shade100, Colors.deepPurpleAccent], () {changeTapIndex(2);}),
            ],
          )
        ],
      ),
    );
  }

  Widget _showLegend(
      String name, List<Color> colors, void Function() onTapCallback) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: InkWell(
        onTap: onTapCallback,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            dotShape(16, colors),
            const SizedBox(width: 8),
            Text(
              name,
              style: const TextStyle(
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
