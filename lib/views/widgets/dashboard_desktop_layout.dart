import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 2 ,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Column(
                        children: [
              Expanded(child: AllExpenses()),
                        ],
                      ),
            )),
      ],
    );
  }
}
