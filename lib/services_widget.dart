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
              Text('Services', style: Theme.of(context).textTheme.titleLarge),
              const Text(
                'See all',
                style: TextStyle(color: Colors.blueAccent),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 80,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _ServiceCard(),
              _ServiceCard(),
              _ServiceCard(),
              _ServiceCard(),
              _ServiceCard(),
              _ServiceCard(),
            ],
          ),
        )
      ],
    );
  }
}

class _ServiceCard extends StatelessWidget {
  const _ServiceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.north,
              size: 20,
            ),
            Text('Transfer'),
          ],
        ),
      ),
    );
  }
}
