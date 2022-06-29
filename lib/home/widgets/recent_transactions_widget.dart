import 'package:flutter/material.dart';
import 'package:mobile_banking/models/transaction.dart';

class RecentTransactionsWidget extends StatelessWidget {
  RecentTransactionsWidget({Key? key}) : super(key: key);

  List<Transaction> transactions = [
    Transaction(
        'Netflix',
        '01 January, 05:15 PM',
        'https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Netflix_icon.svg/1024px-Netflix_icon.svg.png',
        '\$25.00',
        TrxType.outgoing),
    Transaction(
        'Apple music subscription',
        '01 January, 05:15 PM',
        'https://1000logos.net/wp-content/uploads/2016/10/Apple_logo_grey.png',
        '\$12.99',
        TrxType.outgoing),
    Transaction(
        'Spotify family',
        '01 January, 07:00 PM',
        'https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Spotify_logo_without_text.svg/2048px-Spotify_logo_without_text.svg.png',
        '\$15.00',
        TrxType.outgoing),
    Transaction(
        'YouTube premium subscription',
        '01 January, 05:15 PM',
        'https://i.pinimg.com/564x/09/0d/ae/090daea33cd0d47dab065800d9e55334.jpg',
        '\$10.99',
        TrxType.outgoing),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.blue.shade50,
              blurRadius: 10,
              spreadRadius: 4,
              blurStyle: BlurStyle.normal,
            )
          ],
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      clipBehavior: Clip.hardEdge,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 16),
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
            const SizedBox(height: 10),
            ListView(
              shrinkWrap: true,
              children:
                  transactions.map((e) => RecentTransactionItem(e)).toList(),
            )
          ],
        ),
      ),
    );
  }
}

class RecentTransactionItem extends StatelessWidget {
  final Transaction transaction;

  const RecentTransactionItem(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.shade100,
                backgroundImage: NetworkImage(transaction.iconUrl),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transaction.title,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    transaction.dateTime,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ],
          ),
          Text(transaction.amount),
        ],
      ),
    );
  }
}
