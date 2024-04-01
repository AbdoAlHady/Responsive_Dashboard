import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image, this.imageBackground, this.imageColor});
  final String image;
  final Color? imageBackground, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: imageBackground ?? const Color(0xFFFAFAFA),
              shape: BoxShape.circle),
          child: SvgPicture.asset(
                      image,
                      colorFilter: ColorFilter.mode(
            imageColor ?? const Color(0xFF4EB7F2), BlendMode.srcIn),
                    ),
        ),
        const Expanded(child: SizedBox()),
        Transform.rotate(
          angle: -1.571 * 2,
          child:  Icon(
            Icons.arrow_back_ios_new_outlined,
            color: imageBackground ==null? null:Colors.white,
          ),
        )
      ],
    );
  }
}
