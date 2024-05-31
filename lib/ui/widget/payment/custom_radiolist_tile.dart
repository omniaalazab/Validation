import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomRadioListTile extends StatelessWidget {
  CustomRadioListTile({
    super.key,
    required this.payment,
    required this.RadioTitle,
    required this.RadioValue,
  });
  String RadioTitle;
  String RadioValue;
  final String? payment;

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
        title: Text(
          RadioTitle,
          style: const TextStyle(
              fontFamily: "Cairo", fontSize: 14, fontWeight: FontWeight.w500),
        ),
        value: RadioValue,
        groupValue: payment,
        selectedTileColor: HexColor("EFA134"),
        activeColor: HexColor("EFA134"),
        hoverColor: HexColor("EFA134"),
        onChanged: (val) {});
  }
}
