import 'package:flutter/material.dart';
import 'package:validation/widget/CommonWidget/CustomBodyText.dart';

class CustomRowOrder extends StatelessWidget {
  CustomRowOrder({
    required this.SummaryOrderTitle,
    required this.orderPrice,
    super.key,
  });
  String SummaryOrderTitle;
  String orderPrice;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomBodyText(Bodytext: SummaryOrderTitle),
        CustomBodyText(Bodytext: orderPrice),
      ],
    );
  }
}
