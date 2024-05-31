import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:validation/ui/widget/shared_widget/CustomBodyText.dart';

class CustomTextfield extends StatelessWidget {
  CustomTextfield(
      {super.key, required this.labeltext, required this.TextFieldcontroller});
  TextEditingController TextFieldcontroller;
  String labeltext;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: TextFieldcontroller,
      onChanged: (value) {},
      onSubmitted: (value) {},
      decoration: InputDecoration(
        //hintText: 'كود الخصم',
        label: CustomBodyText(
          Bodytext: labeltext,
          Textsize: 13,
          textfontcolor: const Color.fromARGB(255, 200, 200, 200),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: HexColor("EFA134"),
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: const Color.fromARGB(255, 200, 200, 200).withOpacity(.3),
            width: 1,
          ),
        ),
      ),
    );
  }
}
