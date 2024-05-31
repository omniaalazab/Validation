import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:validation/ui/widget/shared_widget/CustomBodyText.dart';

class CustomElevatedValidationButton extends StatelessWidget {
  CustomElevatedValidationButton(
      {super.key,
      required this.buttontext,
      required this.onPressedFunction,
      required this.backcolor,
      required this.fontcolor,
      this.sidecolor,
      this.fontWeight = FontWeight.normal,
      this.textsize = 16,
      this.widthbutton = double.infinity});
  String buttontext;
  double textsize;
  Color backcolor;
  Color fontcolor;
  Color? sidecolor;
  FontWeight fontWeight;
  double widthbutton;
  Function()? onPressedFunction;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressedFunction,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(widthbutton, 50),
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
