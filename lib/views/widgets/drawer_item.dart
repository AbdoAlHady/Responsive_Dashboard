import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/views/widgets/active_and_inactive_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.drawerItemModel, required this.isAvtive});
  final DrawerItemModel drawerItemModel;
  final bool isAvtive;
  @override
  Widget build(BuildContext context) {
    return isAvtive?ActiveDrawerItem(drawerItemModel: drawerItemModel,): InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}

