import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

import '../../models/item_details_model.dart';

class ItemDatails extends StatelessWidget {
  const ItemDatails({super.key, required this.item});
  final ItemDetailsModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: item.color,
        ),
      ),
      title: Text(
        item.title,
        style: AppStyles.styleRegular16.copyWith(
          color: const Color(0xFF064061),
        ),
      ),
      trailing: Text(
        item.amount,
        style: AppStyles.styleMedium16.copyWith(
          color: const Color(0xFF208CC8),
        ),
      ),
    );
  }
}
