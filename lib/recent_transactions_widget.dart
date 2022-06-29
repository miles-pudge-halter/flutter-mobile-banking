import 'package:flutter/material.dart';

class RecentTransactionsWidget extends StatelessWidget {
  const RecentTransactionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recent transactions',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const Text(
                'See all',
                style: TextStyle(color: Colors.blueAccent),
              ),
            ],
          ),
          SizedBox(height: 10),
          ListView(
            shrinkWrap: true,
            children: const [
              _RecentTransactionItem(),
              _RecentTransactionItem(),
              _RecentTransactionItem(),
              _RecentTransactionItem(),
              _RecentTransactionItem(),
            ],
          )
        ],
      ),
    );
  }
}

class _RecentTransactionItem extends StatelessWidget {
  const _RecentTransactionItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Netflix_icon.svg/1024px-Netflix_icon.svg.png'),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Netflix',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Text(
                '01 January, 05:15 PM',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
