import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:validation/widget/CommonWidget/CustomBodyText.dart';

import 'package:validation/widget/CustomDropdownMenu.dart';
import 'package:validation/widget/CommonWidget/CustomElevatedButton.dart';
import 'package:validation/widget/CommonWidget/CustomTextFeild.dart';

import 'package:validation/function/ShowingBottomSheetFunctio.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController phoneNoController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  bool nonvisible = true;
  String? valueselected;

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
            Bodytext: "تحديث الملف الشخصى",
            textfontweight: FontWeight.bold,
            Textsize: 18,
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
                      Bodytext: "body",
                      textfontweight: FontWeight.bold,
                      Textsize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  CustomTextfield(
                    labeltext: "اسم بالكامل",
                    TextFieldcontroller: usernameController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextfield(
                      labeltext: "رقم الهاتف",
                      TextFieldcontroller: phoneNoController),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextfield(
                    TextFieldcontroller: mailController,
                    labeltext: "البريد الالكترونى",
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
                    fontcolor: HexColor("1E1E24"),
                    textsize: 14,
                    fontWeight: FontWeight.w700,
                    buttontext: "تغيير كلمة المرور",
                    onPressedFunction: () {
                      ShowinfBottomSheet.bottomSheet(context);
                    },
                    backcolor: Colors.white,
                    sidebuttoncolor: HexColor("EFA134"),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  CustomElevatedButton(
                      buttontext: "تحديث",
                      onPressedFunction: () {},
                      sidebuttoncolor: HexColor("1E1E24"),
                      backcolor: HexColor("1E1E24"),
                      fontWeight: FontWeight.bold,
                      fontcolor: Colors.white),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
