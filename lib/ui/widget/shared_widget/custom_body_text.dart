import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomBodyText extends StatelessWidget {
  CustomBodyText({
    super.key,
    required this.bodyText,
    this.textSize = 14,
    this.textFontColor,
    //HexColor("1E1E24"),
    this.textFontWeight = FontWeight.w500,
    // this.textAlign = TextAlign.center
  });
  String bodyText;
  double? textSize;
  Color? textFontColor;
  // TextAlign textAlign;
  FontWeight textFontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      bodyText,
      style: TextStyle(
        fontFamily: 'Cairo',
        fontSize: textSize,
        fontWeight: textFontWeight,
        color: textFontColor ?? HexColor("1E1E24"),
      ),
      // textAlign: textAlign,
    );
  }
}
