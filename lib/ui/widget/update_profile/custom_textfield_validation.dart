import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:validation/ui/helper/text_style_helper.dart';

class CustomTextFieldValidation extends StatefulWidget {
  CustomTextFieldValidation({
    super.key,
    required this.labelText,
    required this.textEditingValidatioCnontroller,
    required this.validatorFunction,
  });
  TextEditingController textEditingValidatioCnontroller;
  String labelText;
  String? Function(String?)? validatorFunction;

  @override
  State<CustomTextFieldValidation> createState() =>
      _CustomTextFieldValidationState();
}

class _CustomTextFieldValidationState extends State<CustomTextFieldValidation> {
  var isObsecure;

  final formKey = GlobalKey<FormState>();
  @override
  void initState() {
    isObsecure = true;
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
            obscureText: isObsecure,
            controller: widget.textEditingValidatioCnontroller,
            onChanged: (value) {},
            decoration: InputDecoration(
              suffix: IconButton(
                icon: isObsecure
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    isObsecure = !isObsecure;
                  });
                },
              ),
              label: Text(
                widget.labelText,
                style: TextStyleHelper.textStylefontSize14.copyWith(
                  color: HexColor("1E1E24").withOpacity(.8),
                ),
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
