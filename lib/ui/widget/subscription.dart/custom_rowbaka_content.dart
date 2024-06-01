import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:validation/ui/helper/text_style_helper.dart';

class CustomRowbakaContent extends StatelessWidget {
  CustomRowbakaContent({
    required this.bakaContent,
    required this.numContent,
    super.key,
  });
  String bakaContent;
  String numContent;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bakaContent,
          style: TextStyleHelper.textStylefontSize13,
        ),
        Text(numContent,
            style: TextStyleHelper.textStylefontSize14
                .copyWith(fontWeight: FontWeight.w600)),
        // FontWeight.w600,
      ],
    );
  }
}
