import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/range_options.dart';

import '../../utils/app_styles.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          'Income',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Expanded(child: SizedBox()),
        const RangeOptions(),
      ],
    );
  }
}