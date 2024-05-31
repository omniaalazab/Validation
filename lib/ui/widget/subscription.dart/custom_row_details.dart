import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:validation/ui/widget/shared_widget/CustomBodyText.dart';
import 'package:validation/ui/widget/shared_widget/CustomSmallContainer.dart';

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
            Bodytext: title,
            textfontweight: FontWeight.w400,
            Textsize: 13,
          ),
        ]),
        CustomBodyText(
          Bodytext: title2,
          textfontweight: FontWeight.w400,
          Textsize: 15,
        ),
      ],
    );
  }
}
