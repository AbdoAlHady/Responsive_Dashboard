
import 'package:flutter/material.dart';

class SizeConfig {
  /// Breakpoint
  static const double desktop = 1200;
  static const double tablet = 800;

  /// Screen width and height
  static late double width, height;
  
  
  static init(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
  }
}
