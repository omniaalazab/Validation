import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:validation/ui/widget/payment/custom_column_summary_order.dart';
import 'package:validation/ui/widget/payment/custom_radiolist_tile.dart';
import 'package:validation/ui/widget/payment/custom_row_title.dart';

import 'package:validation/ui/widget/shared_widget/custom_body_text.dart';
import 'package:validation/ui/widget/shared_widget/custom_elevatedbutton.dart';
import 'package:validation/ui/widget/shared_widget/custom_textfeild.dart';

class Payment extends StatelessWidget {
  Payment({super.key});
  TextEditingController codeDiscountTextController = TextEditingController();
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
            bodyText: "الدفع",
            textFontWeight: FontWeight.w900,
            textSize: 18,
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
                          bodyText: "غسلة (داخلى و خارجى)",
                          textFontWeight: FontWeight.w900,
                          textSize: 15,
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
                                radioTitle: "تحويل بنكى",
                                radioValue: "تحويل بنكى",
                              ),
                              CustomRadioListTile(
                                payment: payment,
                                radioTitle: "دفع كاش للمندوب",
                                radioValue: "دفع كاش للمندوب",
                              ),
                              CustomRadioListTile(
                                  payment: payment,
                                  radioTitle: "دفع الكترونى (visa / master)",
                                  radioValue: "دفع الكترونى (visa / master)"),
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
                                TextFieldcontroller: codeDiscountTextController,
                                labelText: 'كود الخصم',
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                            child: CustomElevatedButton(
                              fontColor: Colors.white,
                              backColor: HexColor("1E1E24"),
                              textSize: 14,
                              buttonText: "تطبيق",
                              onPressedFunction: () {},
                              widthButton:
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
                          child: CustomColumnSummaryOrder(),
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
                    textSize: 14,
                    fontColor: Colors.white,
                    backColor: HexColor("1E1E24"),
                    buttonText: "ادفع الان",
                    onPressedFunction: () {},
                    widthButton: double.infinity,
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
