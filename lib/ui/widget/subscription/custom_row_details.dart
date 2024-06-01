import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:validation/ui/widget/shared_widget/custom_small_container.dart';
import 'package:validation/ui/helper/text_style_helper.dart';

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
          Text(title, style: TextStyleHelper.textStylefontSize13),
        ]),
        Text(
          title2,
          style: TextStyleHelper.textStylefontSize15,
        ),
      ],
    );
  }
}
