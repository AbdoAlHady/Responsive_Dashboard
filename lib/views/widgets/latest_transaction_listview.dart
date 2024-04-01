import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const item = [
    UserInfoModel(
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail',
        image: Assets.imagesAvatar1),
    UserInfoModel(
        title: 'Josua Nunito',
        subTitle: 'Josh Nunito@gmail.com@gmail',
        image: Assets.imagesAvatar2),
    UserInfoModel(
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail',
        image: Assets.imagesAvatar3),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: item
            .map((e) => IntrinsicWidth(
                  child: UserInfoListTile(
                    userInfo: e,
                  ),
                ))
            .toList(),
      ),
    );

    // SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: item.length,
    //     itemBuilder: (context, index) => IntrinsicWidth(
    //       child: UserInfoListTile(
    //         userInfo: item[index],
    //       ),
    //     ),
    //   ),
    // );
  }
}
