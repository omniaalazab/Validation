import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:validation/controller/change_password_bottom_sheet.dart';
import 'package:validation/ui/widget/shared_widget/custom_body_text.dart';
import 'package:validation/ui/widget/shared_widget/custom_elevatedbutton.dart';
import 'package:validation/ui/widget/shared_widget/custom_textfeild.dart';

import 'package:validation/update_profile/CustomDropdownMenu.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({super.key});

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController phoneNoController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: HexColor("F7F7F7"),
        //HexColor("F6D71C"),
        appBar: AppBar(
          centerTitle: true,
          title: CustomBodyText(
            bodyText: "تحديث الملف الشخصى",
            textFontWeight: FontWeight.bold,
            textSize: 18,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 105,
                        width: 105,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(30),
                          ),
                          border:
                              Border.all(color: HexColor("EFA134"), width: 3),
                        ),
                        child: Center(
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(253, 236, 235, 235),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: const Icon(
                              Icons.person_outlined,
                              size: 50,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: CustomBodyText(
                      bodyText: "body",
                      textFontWeight: FontWeight.bold,
                      textSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  CustomTextfield(
                    labelText: "اسم بالكامل",
                    TextFieldcontroller: usernameController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextfield(
                      labelText: "رقم الهاتف",
                      TextFieldcontroller: phoneNoController),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextfield(
                    TextFieldcontroller: mailController,
                    labelText: "البريد الالكترونى",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const CustomDropdownMenu(),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomElevatedButton(
                    fontColor: HexColor("1E1E24"),
                    textSize: 14,
                    fontWeight: FontWeight.w700,
                    buttonText: "تغيير كلمة المرور",
                    onPressedFunction: () {
                      ChangePasswordBottomSheet.bottomSheet();
                    },
                    backColor: Colors.white,
                    sideColor: HexColor("EFA134"),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  CustomElevatedButton(
                      buttonText: "تحديث",
                      onPressedFunction: () {},
                      sideColor: HexColor("1E1E24"),
                      backColor: HexColor("1E1E24"),
                      fontWeight: FontWeight.bold,
                      fontColor: Colors.white),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
