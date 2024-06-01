import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:validation/ui/helper/text_style_helper.dart';

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
        Text(
          summaryOrderTitle,
          style: TextStyleHelper.textStylefontSize14,
        ),
        Text(orderPrice, style: TextStyleHelper.textStylefontSize14),
      ],
    );
  }
}
