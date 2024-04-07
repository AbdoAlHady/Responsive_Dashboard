import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/income_section.dart';

import 'all_expenses_and_quick_invoice_section.dart';
import 'my_card_and_transaction_history_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllexpensesAndQuickInvoiceSection(),
          SizedBox(height: 24),
          MyCardAndTrasnactionHistorySection(),
          SizedBox(height: 24),
          IncomeSection()
        ],
      ),
    );
  }
}