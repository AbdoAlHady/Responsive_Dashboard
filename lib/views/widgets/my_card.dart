import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
            image: const DecorationImage(
              fit: BoxFit.fill,
                image: AssetImage(Assets.imagesCardBackground,)),
            color: const Color(0xFF4EB7F2),
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.only(top: 16, right: 42, left: 31),
              title: Text(
                'Name card',
                style: AppStyles.styleRegular16(context)
                    .copyWith(color: const Color(0xffFFFFFF)),
              ),
              subtitle:  Text(
                'Syah Bandi',
                style: AppStyles.styleMedium20(context),
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right:24 ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style:
                        AppStyles.styleSemiBold24(context).copyWith(color: Colors.white),
                  ),
                  Text(
                    '12/20 - 124',
                    style: AppStyles.styleMedium16(context).copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            const Flexible(child: SizedBox(height: 20)),
          ],
        ),
      ),
    );
  }
}
