import 'package:flutter/material.dart';
import 'package:validation/widgetClean/CustomRowOrder.dart';

class CustomColumnsummaryOrder extends StatelessWidget {
  const CustomColumnsummaryOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomRowOrder(
          SummaryOrderTitle: " سعر الخدمة :",
          orderPrice: "120 ريال",
        ),
        const SizedBox(
          height: 10,
        ),
        CustomRowOrder(
          SummaryOrderTitle: " الضريبة :",
          orderPrice: "10 ريال",
        ),
        const SizedBox(
          height: 10,
        ),
        CustomRowOrder(
          SummaryOrderTitle: "الخدمات الاضافية :",
          orderPrice: "30 ريال",
        ),
        const SizedBox(
          height: 10,
        ),
        CustomRowOrder(
          SummaryOrderTitle: " قيمة الخصم :",
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
          SummaryOrderTitle: "المجموع :",
          orderPrice: "130 ريال",
        ),
      ],
    );
  }
}
