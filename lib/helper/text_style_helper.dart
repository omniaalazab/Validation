import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';

class TextStyleHelper {
  static TextStyle textStylefontSize12 = const TextStyle(
    fontFamily: 'Cairo',
    fontSize: 12,
    fontWeight: FontWeight.w900,
  );
  static TextStyle textStylefontSize13 = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 13,
    color: HexColor("1E1E24"),
  );
  static TextStyle textStylefontSize14 = TextStyle(
    fontSize: 14,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w500,
    color: HexColor("1E1E24"),
  );
  static TextStyle textStylefontSize15 = TextStyle(
    fontSize: 15,
    color: HexColor("1E1E24"),
    //fontWeight: FontWeight.bold,
  );
  static TextStyle textStylefontSize16 = TextStyle(
    fontSize: 16,
    fontFamily: 'Cairo',
    color: HexColor("1E1E24"),
  );
  static TextStyle textStylefontSize18 = TextStyle(
    fontSize: 18,
    fontFamily: 'Cairo',
    color: HexColor("1E1E24"),
    fontWeight: FontWeight.bold,
  );
  static TextStyle textStylefontSize20 = TextStyle(
    fontSize: 20,
    fontFamily: 'Cairo',
    color: HexColor("1E1E24"),
    fontWeight: FontWeight.bold,
  );
  static TextStyle textStylefontSize22 = TextStyle(
    fontSize: 22,
    fontFamily: 'Cairo',
    color: HexColor("1E1E24"),
    fontWeight: FontWeight.bold,
  );

  // String bodyText;
  // double? textSize;
  // Color? textFontColor;
  // // TextAlign textAlign;
  // FontWeight textFontWeight;
  // @override
  // Widget build(BuildContext context) {
  //   return Text(
  //     bodyText,
  //     style: TextStyle(
  //       fontFamily: 'Cairo',
  //       fontSize: textSize,
  //       fontWeight: textFontWeight,
  //       color: textFontColor ?? HexColor("1E1E24"),
  //     ),
  //     // textAlign: textAlign,
  //   );
  // }
}
