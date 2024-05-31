import 'package:flutter/material.dart';
import 'package:validation/ui/widget/shared_widget/CustomBodyText.dart';

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
          Bodytext: bakacontent,
          Textsize: 13,
          textfontweight: FontWeight.w400,
        ),
        CustomBodyText(
          Bodytext: nocontent,
          Textsize: 13,
          textfontweight: FontWeight.w600,
        ),
      ],
    );
  }
}
