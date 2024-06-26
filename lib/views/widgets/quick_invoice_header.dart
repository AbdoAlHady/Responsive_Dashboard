import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text('Quick Invoice', style: AppStyles.styleSemiBold20(context)),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
            color: Color(0xFFFAFAFA),
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.add,color: Color(0xff4EB7F2),),
        )
      ],
    );
  }
}
