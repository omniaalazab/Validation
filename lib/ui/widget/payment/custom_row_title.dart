import 'package:flutter/material.dart';
import 'package:validation/ui/widget/shared_widget/custom_body_text.dart';
import 'package:validation/ui/widget/shared_widget/CustomSmallContainer.dart';

class CustomRowTitle extends StatelessWidget {
  CustomRowTitle({super.key, required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomSmallContainer(),
        const SizedBox(
          width: 10,
        ),
        CustomBodyText(
          Bodytext: title,
          textfontweight: FontWeight.w900,
          Textsize: 12,
        ),
      ],
    );
  }
}
