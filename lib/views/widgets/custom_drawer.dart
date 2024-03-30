import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/drawer_items_list_view.dart';
import 'package:responsive_dashboard/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UserInfoListTile(
            title: 'Lekan Okeowo',
            subtitle: 'demo@gmail.com',
            image: Assets.imagesAvatar3,
          ),
          SizedBox(height: 8),
          DrawerItemsListView()
        ],
      ),
    );
  }
}

