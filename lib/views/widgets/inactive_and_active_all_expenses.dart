import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item_header.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item_model.dart';

import '../../utils/app_styles.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.itemModle,
  });

  final AllExpensesItemModel itemModle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 1,
          color: const Color(0xFFF1F1F1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: itemModle.image,
          ),
          const SizedBox(height: 34),
          Text(
            itemModle.title,
            style: AppStyles.styleSemiBold16,
          ),
          const SizedBox(height: 8),
          Text(itemModle.date, style: AppStyles.styleRegular14),
          const SizedBox(height: 16),
          Text(itemModle.price, style: AppStyles.styleSemiBold24),
        ],
      ),
    );
  }
}


class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.itemModle,
  });

  final AllExpensesItemModel itemModle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xFF4DB7F2 ),
        border: Border.all(
          width: 1,
          color: const Color(0xFF4DB7F2 ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: itemModle.image,
            imageBackground: Colors.white.withOpacity(0.10),
            imageColor:const Color(0xffFFFFFF) ,
          ),
          const SizedBox(height: 34),
          Text(
            itemModle.title,
            style: AppStyles.styleSemiBold16.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 8),
          Text(itemModle.date, style: AppStyles.styleRegular14.copyWith(color:const Color(0xFFFAFAFA))),
          const SizedBox(height: 16),
          Text(itemModle.price, style: AppStyles.styleSemiBold24.copyWith(color: Colors.white)),
        ],
      ),
    );
  }
}