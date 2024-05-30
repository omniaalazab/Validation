import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:validation/widget/CustomBodyText.dart';

class validation {
  // static Future<dynamic> CheckPasswordMAtch(TextEditingController oldPW,
  //     TextEditingController newpw, TextEditingController cofirmpw) {
  //   if (cofirmpw.text != newpw.text ||
  //       cofirmpw.text == "" ||
  //       newpw.text == "" ||
  //       oldPW.text == "") {
  //     return getDialogDefult();

  //   } else {
  //     return Fluttertoast.showToast(
  //         msg: "تم تغيير كلمة المرور",
  //         toastLength: Toast.LENGTH_SHORT,
  //         gravity: ToastGravity.BOTTOM,
  //         timeInSecForIosWeb: 6,
  //         backgroundColor: const Color.fromARGB(255, 50, 161, 23),
  //         textColor: Colors.white,
  //         fontSize: 16.0);
  //   }
  // }

  static Future getDialogDefult() {
    return Get.defaultDialog(
      // titlePadding:
      //     const EdgeInsets.only(top: 10),
      title: "تحميل",
      titleStyle: const TextStyle(
        fontFamily: 'Cairo',
        fontSize: 22,
        fontWeight: FontWeight.w900,
      ),
      content: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 15,
            ),
            CustomBodyText(
              Textsize: 13,
              Bodytext: "... من فضلك انتظر ",
            ),
            const SizedBox(
              height: 15,
            ),
            const CircularProgressIndicator(
              color: Color.fromARGB(255, 236, 182, 21),
            ),
          ],
        ),
      ),
    );
  }

  static Future getToast() {
    return Future.delayed(const Duration(seconds: 3)).then((value) {
      Fluttertoast.showToast(
          msg: "كلمة المرور السابقة غير صحيحة",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 6,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    });
  }
}
