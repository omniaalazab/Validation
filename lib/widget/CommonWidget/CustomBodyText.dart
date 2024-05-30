import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomBodyText extends StatelessWidget {
  CustomBodyText({
    super.key,
    required this.Bodytext,
    this.Textsize = 14,
    this.textfontcolor,
    //HexColor("1E1E24"),
    this.textfontweight = FontWeight.w500,
    // this.textAlign = TextAlign.center
  });
  String Bodytext;
  double? Textsize;
  Color? textfontcolor;
  // TextAlign textAlign;
  FontWeight textfontweight;
  @override
  Widget build(BuildContext context) {
    return Text(
      Bodytext,
      style: TextStyle(
        fontFamily: 'Cairo',
        fontSize: Textsize,
        fontWeight: textfontweight,
        color: textfontcolor ?? HexColor("1E1E24"),
      ),
      // textAlign: textAlign,
    );
  }
}
