import 'package:flutter/material.dart';
import 'package:validation/ui/widget/payment/custom_row_order.dart';

class CustomColumnSummaryOrder extends StatelessWidget {
  const CustomColumnSummaryOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomRowOrder(
          summaryOrderTitle: " سعر الخدمة :",
          orderPrice: "120 ريال",
        ),
        const SizedBox(
          height: 10,
        ),
        CustomRowOrder(
          summaryOrderTitle: " الضريبة :",
          orderPrice: "10 ريال",
        ),
        const SizedBox(
          height: 10,
        ),
        CustomRowOrder(
          summaryOrderTitle: "الخدمات الاضافية :",
          orderPrice: "30 ريال",
        ),
        const SizedBox(
          height: 10,
        ),
        CustomRowOrder(
          summaryOrderTitle: " قيمة الخصم :",
          orderPrice: "120 ريال",
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(
          endIndent: 20,
          indent: 20,
        ),
        CustomRowOrder(
          summaryOrderTitle: "المجموع :",
          orderPrice: "130 ريال",
        ),
      ],
    );
  }
}
