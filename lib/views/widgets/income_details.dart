import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/item_details_model.dart';
import 'package:responsive_dashboard/views/widgets/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    ItemDetailsModel(
      color: Color(0xFF208CC8),
      title: 'Design service',
      amount: '40%',
    ),
    ItemDetailsModel(
      color: Color(0xFF4EB7F2),
      title: 'Design product',
      amount: '25%',
    ),
    ItemDetailsModel(
      color: Color(0xFF064061),
      title: 'Product royalti',
      amount: '20%',
    ),
    ItemDetailsModel(
      color: Color(0xFFE2DECD),
      title: 'Other',
      amount: '22%',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => ItemDatails(item: e)).toList(),
    );
    // ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: items.length,
    //   itemBuilder: (context, index) {
    //     return ItemDatails(item: items[index]);
    //   },
    // );
  }
}
