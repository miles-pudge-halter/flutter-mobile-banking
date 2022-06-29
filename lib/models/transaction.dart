class Transaction {
  String title;
  String dateTime;
  String iconUrl;
  String amount;
  TrxType trxType;

  Transaction(this.title,
      this.dateTime,
      this.iconUrl,
      this.amount,
      this.trxType);
}

enum TrxType { incoming, outgoing }