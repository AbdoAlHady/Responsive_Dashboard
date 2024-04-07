import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/views/widgets/income_section.dart';
import 'package:responsive_dashboard/views/widgets/my_card_and_transaction_history_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.only(top: 40),
            child: AllexpensesAndQuickInvoiceSection(),
          ),
        ),
        SizedBox(width: 24),
        Expanded(child: Column(
          children: [
            SizedBox(height: 40),
            MyCardAndTrasnactionHistorySection(),
            SizedBox(height: 24),
            Expanded(child: IncomeSection())
          ],
        )),
       
      ],
    );
  }
}
