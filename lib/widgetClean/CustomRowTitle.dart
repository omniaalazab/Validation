import 'package:clean_task/Widget/CustomBodyText.dart';
import 'package:clean_task/Widget/CustomSmallContainer.dart';
import 'package:flutter/material.dart';
import 'package:validation/widget/CommonWidget/CustomSmallContainer.dart';
import 'package:validation/widget/CustomBodyText.dart';

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
