import 'package:flutter/material.dart';

class StatisticsSummary extends StatelessWidget {
  const StatisticsSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Summary',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              _buildSummaryCard('Income', '\$221,335.00'),
              SizedBox(width: 20),
              _buildSummaryCard('Outcome', '\$10,226.00'),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildSummaryCard(String type, String amount) {
    List<Color> iconGradient = type == 'Outcome'
        ? [Colors.orange.shade600, Colors.orange.shade200]
        : [Colors.green.shade600, Colors.green.shade200];

    List<Color> gradient = type == 'Outcome'
        ? [Colors.orange.shade100, Colors.orange.shade50]
        : [Colors.green.shade100, Colors.green.shade50];

    return Expanded(
      child: Container(
        height: 200,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: gradient,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: iconGradient,
                ),
              ),
              child: Icon(
                type == 'Income' ? Icons.turn_left : Icons.turn_right,
                size: 40,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            Text(
              type,
              style: TextStyle(
                color: Colors.grey.shade700,
                fontSize: 12,
              ),
            ),
            SizedBox(height: 4),
            Text(
              amount,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
