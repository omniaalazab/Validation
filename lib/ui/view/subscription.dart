import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';

import 'package:validation/ui/widget/shared_widget/custom_body_text.dart';
import 'package:validation/ui/widget/shared_widget/custom_small_container.dart';
import 'package:validation/ui/widget/subscription.dart/custom_row_details.dart';

import 'package:validation/widget/widgetSubscribtion/CustomRowbakaContent.dart';

class Subscription extends StatelessWidget {
  const Subscription({super.key});

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
            bodyText: "الاشتراكات",
            textFontWeight: FontWeight.w900,
            textSize: 18,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [
                  Center(
                    child: Container(
                      width: 400,
                      height: 200,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("assets/images/subscription.png"),
                      )),
                    ),
                  ),
                  Center(
                    child: CustomBodyText(
                      bodyText: "الباقة السباعية",
                      textFontWeight: FontWeight.w900,
                      textSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomBodyText(
                    bodyText: "247.00 ريال",
                    textFontWeight: FontWeight.w900,
                    textSize: 22,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 8,
                        width: 270,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          color: Color.fromARGB(255, 241, 230, 196),
                        ),
                      ),
                      CustomBodyText(
                        bodyText: "29/0",
                        textFontWeight: FontWeight.w500,
                        textSize: 16,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomBodyText(
                    bodyText: " عدد الغسلات المستهلكة:   0 ",
                    textFontWeight: FontWeight.w600,
                    textSize: 16,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton.icon(
                      label: CustomBodyText(
                          bodyText: "تفاصيل الباقة",
                          textSize: 16,
                          textFontWeight: FontWeight.w900,
                          textFontColor: Colors.white),
                      icon: const Icon(
                        Icons.subscriptions,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 60),
                        backgroundColor: HexColor("EFA134"),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomRowDetail(
                          title: "تاريخ الاشتراك",
                          title2: "2024-05-27",
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        CustomRowDetail(
                          title: "طريقة الدفع",
                          title2: "دفع كاش للمندوب",
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        CustomRowDetail(
                          title: "المبلغ المدفوع ",
                          title2: "247.00 ريال",
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 0,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      // fromLTRB(15, 25, 15, 25),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const CustomSmallContainer(),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  CustomBodyText(
                                    bodyText: "محتويات الباقة",
                                    textFontWeight: FontWeight.w900,
                                    textSize: 16,
                                  ),
                                ]),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          CustomRowbakacontent(
                            bakaContent: " فواحة:",
                            numContent: "29/0",
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          CustomRowbakacontent(
                            bakaContent: " دعاسات (قطعتين):",
                            numContent: "29/0",
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          CustomRowbakacontent(
                            bakaContent: " مناديل:",
                            numContent: "29/0",
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          CustomRowbakacontent(
                            bakaContent: " قفازات قياده:",
                            numContent: "29/0",
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
