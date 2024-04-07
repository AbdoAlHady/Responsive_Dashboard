import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isAvtive});
  final bool isAvtive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width:isAvtive?32: 8,
      height: 8,
      decoration:  BoxDecoration(
        color:isAvtive?const Color(0xFF4DB7F2): const Color(0xFFE7E7E7),
        borderRadius: BorderRadius.circular(12)
      ),
    );
  }
}
