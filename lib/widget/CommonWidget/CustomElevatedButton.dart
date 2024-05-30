import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:validation/widget/CustomBodyText.dart';

class CustomElevatedValidationButton extends StatelessWidget {
  CustomElevatedValidationButton(
      {super.key,
      required this.buttontext,
      required this.onPressedFunction,
      required this.backcolor,
      required this.fontcolor,
      this.sidecolor,
      this.fontWeight = FontWeight.normal,
      this.textsize = 16
       required this.widthbutton});
  String buttontext;
  double textsize;
  Color backcolor;
  Color fontcolor;
  Color? sidecolor;
  FontWeight fontWeight;
  Function()? onPressedFunction;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressedFunction,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        backgroundColor: backcolor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              color: sidecolor ??= HexColor("EFA134"),
            )),
      ),
      child: CustomBodyText(
        Bodytext: buttontext,
        textfontweight: fontWeight,
        textfontcolor: fontcolor,
        Textsize: textsize,
      ),
    );
  }
}

class CustomElevatedCleanButton extends StatelessWidget {
  CustomElevatedCleanButton(
      {super.key,
      required this.buttontext,
      required this.onPressedFunction,
      required this.widthbutton});
  String buttontext;
  double widthbutton;

  Function()? onPressedFunction;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressedFunction,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(widthbutton, 50),
        backgroundColor: HexColor("1E1E24"),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: CustomBodyText(
        Bodytext:  buttontext,
          textfontweight: FontWeight.bold,
          textfontcolor: Colors.white),
    );
  }
}
