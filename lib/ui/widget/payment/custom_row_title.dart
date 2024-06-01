import 'package:flutter/material.dart';

import 'package:validation/ui/widget/shared_widget/custom_small_container.dart';
import 'package:validation/ui/helper/text_style_helper.dart';

class CustomRowHeadTitle extends StatelessWidget {
  CustomRowHeadTitle({super.key, required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomSmallContainer(),
        const SizedBox(
          width: 10,
        ),
        Text(title, style: TextStyleHelper.textStylefontSize12),
      ],
    );
  }
}
