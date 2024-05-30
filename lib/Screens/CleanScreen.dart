import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:validation/widget/CustomBodyText.dart';
import 'package:validation/widgetClean/CustomElevatedCleanButton.dart';
import 'package:validation/widgetClean/CustomRadioListTile.dart';
import 'package:validation/widgetClean/CustomRowOrder.dart';
import 'package:validation/widgetClean/CustomRowTitle.dart';
import 'package:validation/widget/CommonWidget/CustomElevatedButton.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  TextEditingController searchcontroller = TextEditingController();
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
                      CustomRowTitle(title: "طرق الدفع"),
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
                  child: CustomRowTitle(title: "كود الخصم"),
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
                              child: TextField(
                                controller: searchcontroller,
                                onChanged: (value) {},
                                onSubmitted: (value) {},
                                decoration: InputDecoration(
                                  //hintText: 'كود الخصم',
                                  label: CustomBodyText(
                                    Bodytext: 'كود الخصم',
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(
                                      color: Colors.amber,
                                      width: 1,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      color: const Color.fromARGB(
                                              255, 207, 208, 209)
                                          .withOpacity(.5),
                                      width: 1,
                                    ),
                                  ),
                                ),
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
                      CustomRowTitle(title: "ملخص الطلب"),
                      const SizedBox(
                        height: 15,
                      ),
                      Card(
                        elevation: 0,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(30),
                          // fromLTRB(15, 25, 15, 25),
                          child: Column(
                            children: [
                              CustomRowOrder(
                                prefOrderTitle: " سعر الخدمة :",
                                orderPrice: "120 ريال",
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              CustomRowOrder(
                                prefOrderTitle: " الضريبة :",
                                orderPrice: "10 ريال",
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              CustomRowOrder(
                                prefOrderTitle: "الخدمات الاضافية :",
                                orderPrice: "30 ريال",
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              CustomRowOrder(
                                prefOrderTitle: " قيمة الخصم :",
                                orderPrice: "120 ريال",
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Divider(
                                endIndent: 20,
                                indent: 20,
                              ),
                              CustomRowOrder(
                                prefOrderTitle: "المجموع :",
                                orderPrice: "130 ريال",
                              ),
                            ],
                          ),
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
