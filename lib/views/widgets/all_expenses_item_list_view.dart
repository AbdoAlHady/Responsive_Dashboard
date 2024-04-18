import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item.dart';

import 'all_expenses_item_model.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final item = [
    const AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: '\$20,129'),
    const AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: '\$20,129'),
    const AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: '\$20,129'),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: GestureDetector(
          onTap: () {
            updateSelectedIndex(0);
          },
          child: AllExpensesItem(
            itemModle: item[0],
            isSelected: currentIndex == 0 ? true : false,
          ),
        ),
      ),
      const SizedBox(width: 12),
      Expanded(
        child: GestureDetector(
          onTap: () {
            updateSelectedIndex(1);
          },
          child: AllExpensesItem(
            itemModle: item[1],
            isSelected: currentIndex == 1 ? true : false,
          ),
        ),
      ),
      const SizedBox(width: 8),
      Expanded(
        child: GestureDetector(
          onTap: () {
            updateSelectedIndex(2);
          },
          child: AllExpensesItem(
            itemModle: item[2],
            isSelected: currentIndex == 2 ? true : false,
          ),
        ),
      ),
    ]);
  }

  void updateSelectedIndex(int index) {
    currentIndex = index;
    setState(() {});
  }
}
