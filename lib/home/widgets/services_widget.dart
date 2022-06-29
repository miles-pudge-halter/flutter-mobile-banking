import 'package:flutter/material.dart';

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Services',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold)),
              const Text(
                'See all',
                style: TextStyle(color: Colors.blueAccent),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 120,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ServiceCard('Transfer', Icons.north, Colors.blue,
                  const [Color(0xffd3e7ff), Color(0xffedf8ff)]),
              ServiceCard('Request', Icons.south, Colors.pink,
                  const [Color(0xffffc9c9), Color(0xffffeaea)]),
              ServiceCard('Pay Bill', Icons.wallet, Colors.orange,
                  const [Color(0xffffe9ba), Color(0xfffff7e8)]),
              ServiceCard('Invoice', Icons.receipt_long, Colors.green,
                  const [Color(0xffb8ffb7), Color(0xffe8ffe8)]),
            ],
          ),
        )
      ],
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final List<Color> gradient;

  ServiceCard(this.title, this.icon, this.color, this.gradient);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade100,
            blurRadius: 7,
            spreadRadius: 2,
          ),
        ],
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: gradient,
                ),
              ),
              child: Icon(
                icon,
                size: 25,
                color: color,
              ),
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}
