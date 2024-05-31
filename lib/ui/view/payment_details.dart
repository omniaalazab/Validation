import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:validation/ui/widget/shared_widget/CustomBodyText.dart';

import 'package:validation/widget/CustomTextFeild.dart';
import 'package:validation/widget/widgetClean/CustomColumnSummaryOrder.dart';
import 'package:validation/widget/widgetClean/CustomRadioListTile.dart';

import 'package:validation/widget/widgetClean/CustomRowTitle.dart';
import 'package:validation/widget/CommonWidget/CustomElevatedButton.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  TextEditingController codediscountTextController = TextEditingController();
  String? payment = "دفع كاش للمندوب";
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
            Bodytext: "الدفع",
            textfontweight: FontWeight.w900,
            Textsize: 18,
          ),
          leading: const Icon(Icons.arrow_back),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 25, 10, 25.0),
                  child: Column(
                    children: [
                      Center(
                        child: CustomBodyText(
                          Bodytext: "غسلة (داخلى و خارجى)",
                          textfontweight: FontWeight.w900,
                          Textsize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomRowHeadTitle(title: "طرق الدفع"),
                      const SizedBox(
                        height: 15,
                      ),
                      Card(
                        elevation: 0,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              CustomRadioListTile(
                                payment: payment,
                                RadioTitle: "تحويل بنكى",
                                RadioValue: "تحويل بنكى",
                              ),
                              CustomRadioListTile(
                                payment: payment,
                                RadioTitle: "دفع كاش للمندوب",
                                RadioValue: "دفع كاش للمندوب",
                              ),
                              CustomRadioListTile(
                                  payment: payment,
                                  RadioTitle: "دفع الكترونى (visa / master)",
                                  RadioValue: "دفع الكترونى (visa / master)"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CustomRowHeadTitle(title: "كود الخصم"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 0,
                    child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: CustomTextfield(
                                TextFieldcontroller: codediscountTextController,
                                labeltext: 'كود الخصم',
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                            child: CustomElevatedButton(
                              fontcolor: Colors.white,
                              backcolor: HexColor("1E1E24"),
                              textsize: 14,
                              buttontext: "تطبيق",
                              onPressedFunction: () {},
                              widthbutton:
                                  MediaQuery.of(context).size.width * 0.2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CustomRowHeadTitle(title: "ملخص الطلب"),
                      const SizedBox(
                        height: 15,
                      ),
                      const Card(
                        elevation: 0,
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(30),
                          // fromLTRB(15, 25, 15, 25),
                          child: CustomColumnsummaryOrder(),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 20),
                  child: CustomElevatedButton(
                    textsize: 14,
                    fontcolor: Colors.white,
                    backcolor: HexColor("1E1E24"),
                    buttontext: "ادفع الان",
                    onPressedFunction: () {},
                    widthbutton: double.infinity,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
