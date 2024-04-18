import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, this.backgroundColor, required this.title, this.textColor});

  final Color? backgroundColor;
  final String title;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 0,
            backgroundColor: backgroundColor ?? const Color(0xFF4EB7F2)),
        child: Text(
          title,
          style: AppStyles.styleSemiBold18(context)
              .copyWith(color: textColor ?? Colors.white),
        ),
      ),
    );
  }
}
