import 'package:flutter/material.dart';
import 'package:validation/ui/widget/shared_widget/custom_body_text.dart';

class CustomRowOrder extends StatelessWidget {
  CustomRowOrder({
    required this.summaryOrderTitle,
    required this.orderPrice,
    super.key,
  });
  String summaryOrderTitle;
  String orderPrice;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomBodyText(bodyText: summaryOrderTitle),
        CustomBodyText(bodyText: orderPrice),
      ],
    );
  }
}
