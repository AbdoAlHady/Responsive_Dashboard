class TransactionModel {
  final String title;
  final String date, amount;
  final bool isWithdrawal;

  const TransactionModel(
      {required this.title,
      required this.date,
      required this.amount,
      required this.isWithdrawal});
}
