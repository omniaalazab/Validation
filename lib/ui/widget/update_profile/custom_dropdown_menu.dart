import 'package:flutter/material.dart';

import 'package:validation/ui/helper/text_style_helper.dart';

class CustomDropdownMenu extends StatelessWidget {
  const CustomDropdownMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      dropdownMenuEntries: const <DropdownMenuEntry<String>>[
        DropdownMenuEntry(value: "نجران", label: "نجران"),
        DropdownMenuEntry(value: "مكة", label: "مكة"),
        DropdownMenuEntry(value: "وادى الدواسر", label: "وادى الدواسر"),
        DropdownMenuEntry(value: "شرورة", label: "شرورة"),
        DropdownMenuEntry(value: "جدة", label: "جدة"),
        DropdownMenuEntry(value: "تبوك", label: "تبوك"),
        DropdownMenuEntry(value: "سكاكا", label: "سكاكا"),
        DropdownMenuEntry(value: "حفر الباطن", label: "حفر الباطن"),
        DropdownMenuEntry(value: "خميس مشيط", label: "خميس مشيط"),
        DropdownMenuEntry(value: "عنيزة", label: "عنيزة"),
        DropdownMenuEntry(value: "نجران", label: "عفيف"),
      ],
      //underline:SizedBox.shrink(),
      width: 350,
      enableSearch: true,
      menuHeight: 300,
      label: Text(
        "المدينة",
        style: TextStyleHelper.textStylefontSize13.copyWith(
          color: const Color.fromARGB(255, 200, 200, 200),
        ),
      ),

      trailingIcon: const Icon(Icons.keyboard_arrow_down_rounded,
          color: Color.fromARGB(255, 135, 135, 135)),
      selectedTrailingIcon: const Icon(Icons.keyboard_arrow_up_rounded,
          color: Color.fromARGB(255, 135, 135, 135)),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: const Color.fromARGB(255, 200, 200, 200).withOpacity(.3),
        hintStyle: const TextStyle(
            color: Color.fromARGB(255, 135, 135, 135),
            fontFamily: 'Cairo',
            fontSize: 13),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: const Color.fromARGB(255, 200, 200, 200).withOpacity(.3),
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: const Color.fromARGB(255, 200, 200, 200).withOpacity(.3),
            width: 1,
          ),
        ),
      ),
    );
  }
}
