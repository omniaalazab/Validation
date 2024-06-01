import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:validation/ui/helper/text_style_helper.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton(
      {super.key,
      required this.buttonText,
      required this.onPressedFunction,
      required this.backColor,
      required this.fontColor,
      this.sideColor,
      this.fontWeight = FontWeight.normal,
      this.textSize = 16,
      this.widthButton = double.infinity});
  String buttonText;
  double textSize;
  Color backColor;
  Color fontColor;
  Color? sideColor;
  FontWeight fontWeight;
  double widthButton;
  Function()? onPressedFunction;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressedFunction,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(widthButton, 50),
        backgroundColor: backColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              color: sideColor ??= HexColor("EFA134"),
            )),
      ),
      child: Text(
        buttonText,
        style: TextStyleHelper.textStylefontSize16.copyWith(
            fontWeight: fontWeight, color: fontColor, fontSize: textSize),
      ),
    );
  }
}
