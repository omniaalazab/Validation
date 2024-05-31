import 'package:flutter/material.dart';
import 'package:validation/ui/widget/shared_widget/custom_body_text.dart';

class CustomRowbakacontent extends StatelessWidget {
  CustomRowbakacontent({
    required this.bakacontent,
    required this.nocontent,
    super.key,
  });
  String bakacontent;
  String nocontent;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomBodyText(
          bodyText: bakacontent,
          textSize: 13,
          textFontWeight: FontWeight.w400,
        ),
        CustomBodyText(
          bodyText: nocontent,
          textSize: 13,
          textFontWeight: FontWeight.w600,
        ),
      ],
    );
  }
}
