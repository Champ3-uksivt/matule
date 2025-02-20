import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/presentation/pages/FindedPage.dart';
import 'package:flutter_application_1/presentation/widgets/textstyle.dart';
import 'package:flutter_svg/svg.dart';

class SearchBoxExpanded extends StatelessWidget {
  const SearchBoxExpanded({
    super.key,
    required this.textEditingController,
  });
  final TextEditingController textEditingController;
  final text = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Mycolors().block,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextFormField(
        onFieldSubmitted: (qwe) {
          if (qwe.toLowerCase().contains("nike")) {
            log("message");
            Navigator.push(
                context,
                CupertinoPageRoute(
                    builder: (context) => FindedPage(text: qwe)));
          }
        },
        decoration: InputDecoration(
            fillColor: Mycolors().block,
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: SvgPicture.asset("assets/images/Microphone.svg"),
            ),
            prefixIcon: SizedBox(
              child: SvgPicture.asset(
                "assets/images/Marker.svg",
                height: 30,
                width: 30,
                color: Mycolors().hint,
              ),
            ),
            hintText: "Поиск",
            hintStyle: myTextStyle(TextDecoration.none, Mycolors().hint, 14)),
        cursorWidth: 0,
      ),
    );
  }
}
