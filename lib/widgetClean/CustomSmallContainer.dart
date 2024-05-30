import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomSmallContainer extends StatelessWidget {
  const CustomSmallContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      width: 5,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: [
                // backgroundColor(fd5d35), backgroundColor(ffded5),
                Color.fromARGB(255, 236, 230, 209),
                Color.fromARGB(255, 248, 198, 50),
              ])),
    );
  }
}
