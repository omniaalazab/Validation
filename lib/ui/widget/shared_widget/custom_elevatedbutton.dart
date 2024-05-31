import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:validation/ui/widget/shared_widget/custom_body_text.dart';

class CustomElevatedValidationButton extends StatelessWidget {
  CustomElevatedValidationButton(
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
      child: CustomBodyText(
        bodyText: buttonText,
        textFontWeight: fontWeight,
        textFontColor: fontColor,
        textSize: textSize,
      ),
    );
  }
}
