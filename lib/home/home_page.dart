import 'package:flutter/material.dart';
import 'package:mobile_banking/home/widgets/credit_card_widget.dart';

import 'widgets/recent_transactions_widget.dart';
import 'widgets/services_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _HeaderWidget(),
          SizedBox(height: 10),
          CreditCardWidget(),
          SizedBox(height: 20),
          ServicesWidget(),
          SizedBox(height: 16),
          RecentTransactionsWidget(),
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 28,
            backgroundImage: NetworkImage(
                'https://pbs.twimg.com/profile_images/1439953850471911426/s4pE9SYa_400x400.jpg'),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, Tony',
                style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  color: Colors.grey,
                  fontWeight: FontWeight.w100
                ),
              ),
              Text(
                'Welcome back!',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
