import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';

import 'package:validation/ui/widget/shared_widget/custom_body_text.dart';
import 'package:validation/ui/widget/shared_widget/custom_small_container.dart';
import 'package:validation/ui/widget/subscription.dart/custom_row_details.dart';

import 'package:validation/widget/widgetSubscribtion/CustomRowbakaContent.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
            Bodytext: "الاشتراكات",
            textfontweight: FontWeight.w900,
            Textsize: 18,
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
                      Bodytext: "الباقة السباعية",
                      textfontweight: FontWeight.w900,
                      Textsize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomBodyText(
                    Bodytext: "247.00 ريال",
                    textfontweight: FontWeight.w900,
                    Textsize: 22,
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
                        Bodytext: "29/0",
                        textfontweight: FontWeight.w500,
                        Textsize: 16,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomBodyText(
                    Bodytext: " عدد الغسلات المستهلكة:   0 ",
                    textfontweight: FontWeight.w600,
                    Textsize: 16,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton.icon(
                      label: CustomBodyText(
                          Bodytext: "تفاصيل الباقة",
                          Textsize: 16,
                          textfontweight: FontWeight.w900,
                          textfontcolor: Colors.white),
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
                                    Bodytext: "محتويات الباقة",
                                    textfontweight: FontWeight.w900,
                                    Textsize: 16,
                                  ),
                                ]),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          CustomRowbakacontent(
                            bakacontent: " فواحة:",
                            nocontent: "29/0",
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          CustomRowbakacontent(
                            bakacontent: " دعاسات (قطعتين):",
                            nocontent: "29/0",
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          CustomRowbakacontent(
                            bakacontent: " مناديل:",
                            nocontent: "29/0",
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          CustomRowbakacontent(
                            bakacontent: " قفازات قياده:",
                            nocontent: "29/0",
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
