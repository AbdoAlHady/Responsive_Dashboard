import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/trasactiom_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionItem});
  final TransactionModel transactionItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: const Color(0xffFAFAFA),
      child: ListTile(
        title: Text( 
          transactionItem.title,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          transactionItem.date,
          style:
              AppStyles.styleRegular16.copyWith(color: const Color(0xFFAAAAAA)),
        ),
        trailing: Text(
          transactionItem.amount,
          style: AppStyles.styleSemiBold20.copyWith(
              color: transactionItem.isWithdrawal
                  ? const Color(0xFFF3735E)
                  : const Color(0xFF7DD97B)),
        ),
      ),
    );
  }
}
