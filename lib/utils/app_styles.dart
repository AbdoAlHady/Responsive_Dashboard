import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFintSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
      color: const Color(0xFF064060),
    );
  }

  static TextStyle styleMedium16(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFintSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
      color: const Color(0xFF064061),
    );
  }

  static TextStyle styleBold16(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFintSize(context, fontSize: 16),
      fontWeight: FontWeight.w700,
      color: const Color(0xFF4EB7F2),
    );
  }

  static TextStyle styleMedium20(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFintSize(context, fontSize: 20),
      fontWeight: FontWeight.w500,
      color: const Color(0xffFFFFFF),
    );
  }

  static TextStyle styleSemiBold16(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFintSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
      color: const Color(0xFF064061),
    );
  }

  static TextStyle styleSemiBold20(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFintSize(context, fontSize: 20),
      fontWeight: FontWeight.w600,
      color: const Color(0xff064060),
    );
  }

  static TextStyle styleRegular12(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFintSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
      color: const Color(0xFFAAAAAA),
    );
  }

  static TextStyle styleSemiBold24(context) {
    return TextStyle(
        fontFamily: 'Montserrat',
        fontSize: getResponsiveFintSize(context, fontSize: 24),
        fontWeight: FontWeight.w600,
        color: const Color(0xFF4EB7F2));
  }

  static TextStyle styleRegular14(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFintSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
      color: const Color(0xFFAAAAAA),
    );
  }

  static TextStyle styleSemiBold18(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFintSize(context, fontSize: 18),
    fontWeight: FontWeight.w600,
    color: const Color(0xFFFFFFFF),
    );
  }


}

double getResponsiveFintSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
