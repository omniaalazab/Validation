import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:hexcolor/hexcolor.dart';

import 'package:validation/widget/CustomBodyText.dart';
import 'package:validation/widgetvalidation/CustomElevatedValidationButton.dart';
import 'package:validation/widget/CustomTextFieldValidation.dart';
import 'package:validation/function/ValidationFunction.dart';

class ShowinfBottomSheet {
  static Future bottomSheet(BuildContext context1) {
    TextEditingController oldPWController = TextEditingController();
    TextEditingController newPWController = TextEditingController();
    TextEditingController confirmPWController = TextEditingController();

    return showModalBottomSheet(
        context: context1,
        builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.all(15),
            child: ListView(
              children: [
                CustomBodyText(
                  Bodytext: "تغيير كلمة المرور",
                  Textsize: 18,
                  textfontweight: FontWeight.normal,
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomTextfieldvalidation(
                  labeltext: "كلمة المرور القديمة",
                  TextEditingValidationcontroller: oldPWController,
                  validatorFunction: (value) {
                    if (value!.isEmpty) {
                      return "usernsme cann't be empty";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextfieldvalidation(
                  labeltext: "كلمة المرور الجديدة",
                  TextEditingValidationcontroller: newPWController,
                  validatorFunction: (value) {
                    if (value!.isEmpty) {
                      return "password can't be empty";
                    } else if (value.length < 4) {
                      return "password can't be less than 4";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextfieldvalidation(
                  labeltext: "تاكيد كلمة المرور ",
                  TextEditingValidationcontroller: confirmPWController,
                  validatorFunction: (value) {
                    if (value!.isEmpty) {
                      return "password cann't be empty";
                    } else if (value != confirmPWController.text) {
                      return "password doesn't match";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                ),
                CustomElevatedButton(
                  textsize: 18,
                  sidecolor: HexColor("1E1E24"),
                  backcolor: HexColor("1E1E24"),
                  fontWeight: FontWeight.normal,
                  fontcolor: Colors.white,
                  buttontext: "تغيير كلمة المرور",
                  onPressedFunction: () {
                    if (confirmPWController.text != newPWController.text ||
                        confirmPWController.text == "" ||
                        newPWController.text == "" ||
                        oldPWController.text == "") {
                      validation.getErrorDialogDefult();
                      validation.getErrorToast();
                    } else {
                      validation.getSucessToast();
                    }
                  },
                ),
              ],
            ),
          );
        });
  }
}
