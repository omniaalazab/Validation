import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:validation/ui/widget/shared_widget/custom_body_text.dart';
import 'package:validation/ui/widget/shared_widget/custom_small_container.dart';

class CustomRowDetail extends StatelessWidget {
  CustomRowDetail({super.key, required this.title, required this.title2});
  String title;
  String title2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          const CustomSmallContainer(),
          const SizedBox(
            width: 10,
          ),
          CustomBodyText(
            bodyText: title,
            textFontWeight: FontWeight.w400,
            textSize: 13,
          ),
        ]),
        CustomBodyText(
          bodyText: title2,
          textFontWeight: FontWeight.w400,
          textSize: 15,
        ),
      ],
    );
  }
}
