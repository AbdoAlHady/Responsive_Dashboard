import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/views/widgets/my_card.dart';
import 'package:responsive_dashboard/views/widgets/transaction_history.dart';

class MyCardAndTrasnactionHistorySection extends StatelessWidget {
  const MyCardAndTrasnactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCard(),
          Divider(
            height: 40,
            color: Color(0xFFF1F1F1),
          ),

          TransactionHistory(),
        ],
      ),
    );
  }
}
