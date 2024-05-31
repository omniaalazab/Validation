import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:validation/ui/widget/shared_widget/CustomBodyText.dart';

class CustomTextfieldvalidation extends StatefulWidget {
  CustomTextfieldvalidation({
    super.key,
    required this.labeltext,
    required this.TextEditingValidationcontroller,
    required this.validatorFunction,
  });
  TextEditingController TextEditingValidationcontroller;
  String labeltext;
  String? Function(String?)? validatorFunction;

  @override
  State<CustomTextfieldvalidation> createState() =>
      _CustomTextfieldvalidationState();
}

class _CustomTextfieldvalidationState extends State<CustomTextfieldvalidation> {
  var isobsecure;

  final formKey = GlobalKey<FormState>();
  @override
  void initState() {
    isobsecure = true;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Form(
        // autovalidateMode: AutovalidateMode.always,
        key: formKey,
        child: SizedBox(
          height: 70,
          width: double.infinity,
          child: TextFormField(
            obscureText: isobsecure,
            controller: widget.TextEditingValidationcontroller,
            onChanged: (value) {},
            decoration: InputDecoration(
              suffix: IconButton(
                icon: isobsecure
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    isobsecure = !isobsecure;
                  });
                },
              ),
              label: CustomBodyText(
                Textsize: 14,
                textfontcolor: HexColor("1E1E24").withOpacity(.8),
                Bodytext: widget.labeltext,
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
                  color:
                      const Color.fromARGB(255, 200, 200, 200).withOpacity(.3),
                  width: 1,
                ),
              ),
            ),
            // onSaved: ,
            validator: widget.validatorFunction,
          ),
        ),
      ),
    );
  }
}
