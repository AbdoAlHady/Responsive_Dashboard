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
    return Row(
        // children: item.map((e) => Expanded(child: AllExpensesItem(itemModle: e,))).toList(),

        children: item.asMap().entries.map((e) {
      int index = e.key;
      var item = e.value;
      if (index == 1) {
        return Expanded(
          child: GestureDetector(
            onTap: () {
                updateSelectedIndex(index);
            },
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: AllExpensesItem(
                  itemModle: item,
                  isSelected: index == currentIndex ? true : false,
                )),
          ),
        );
      } else {
        return Expanded(
            child: GestureDetector(
          onTap: () {
            updateSelectedIndex(index);
          },
          child: AllExpensesItem(
            itemModle: item,
            isSelected: index == currentIndex ? true : false,
          ),
        ));
      }
    }).toList());
  }

  void updateSelectedIndex(int index) {
      currentIndex = index;
    setState(() {});
  }
}
