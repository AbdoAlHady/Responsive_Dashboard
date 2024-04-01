import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item_model.dart';
import 'package:responsive_dashboard/views/widgets/inactive_and_active_all_expenses.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.itemModle, required this.isSelected});
  final AllExpensesItemModel itemModle;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensesItem(itemModle: itemModle)
        : InActiveAllExpensesItem(itemModle: itemModle);
  }
}
