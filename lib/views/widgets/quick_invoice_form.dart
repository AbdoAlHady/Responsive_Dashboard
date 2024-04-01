import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_btn.dart';
import 'package:responsive_dashboard/views/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                  hint: 'Type customer name', title: 'Customer name'),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                  hint: 'Type customer email', title: 'Customer Email'),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                  hint: 'Type customer name', title: 'Item name'),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(hint: 'USD', title: 'Item mount'),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                title: 'Add more details',
                backgroundColor: Colors.white,
                textColor: Color(0xFF4EB7F2),
              ),
            ),
            SizedBox(width: 24),
            Expanded(
              child: CustomButton(
                title: 'Send Money',
              ),
            ),
          ],
        )
      ],
    );
  }
}
