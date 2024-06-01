import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:validation/ui/widget/shared_widget/custom_elevatedbutton.dart';
import 'package:validation/ui/helper/text_style_helper.dart';
import 'package:validation/ui/widget/update_profile/custom_textfield_validation.dart';
import 'package:validation/ui/widget/update_profile/check_confirm_password.dart';

class BottomSheetModel extends StatelessWidget {
  BottomSheetModel({super.key});
  TextEditingController oldPWController = TextEditingController();
  TextEditingController newPWController = TextEditingController();
  TextEditingController confirmPWController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: ListView(
        children: [
          Center(
            child: Text(
              "تغيير كلمة المرور",
              style: TextStyleHelper.textStylefontSize18,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          CustomTextFieldValidation(
            labelText: "كلمة المرور القديمة",
            textEditingValidatioCnontroller: oldPWController,
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
          CustomTextFieldValidation(
            labelText: "كلمة المرور الجديدة",
            textEditingValidatioCnontroller: newPWController,
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
          CustomTextFieldValidation(
            labelText: "تاكيد كلمة المرور ",
            textEditingValidatioCnontroller: confirmPWController,
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
            textSize: 18,
            sideColor: HexColor("1E1E24"),
            backColor: HexColor("1E1E24"),
            fontWeight: FontWeight.normal,
            fontColor: Colors.white,
            buttonText: "تغيير كلمة المرور",
            onPressedFunction: () {
              if (confirmPWController.text != newPWController.text ||
                  confirmPWController.text == "" ||
                  newPWController.text == "" ||
                  oldPWController.text == "") {
                CheckConfirmPassword.showErrorDialogDefult();
                CheckConfirmPassword.showErrorToast();
              } else {
                CheckConfirmPassword.showSucessToast();
              }
            },
          ),
        ],
      ),
    );
  }
}
