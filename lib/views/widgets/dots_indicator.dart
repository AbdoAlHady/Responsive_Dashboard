import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentPageIndex});
  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) => Padding(
                padding: const EdgeInsets.only(right: 6),
                child: CustomDotIndicator(
                    isAvtive: index == currentPageIndex),
              )),
    );
  }
}
