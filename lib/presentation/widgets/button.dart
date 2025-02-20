import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/widgets/textstyle.dart';
import 'package:flutter_svg/svg.dart';

Widget button(
    Function()? onTap, String text, Color textColor, Color backgroundColor,
    {bool addtoKorzina = false}) {
  if (addtoKorzina == true) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: backgroundColor,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
            child: SvgPicture.asset(
              "assets/images/bag-2.svg",
              height: 30,
              width: 30,
            ),
          ),
          TextButton(
              onPressed: onTap,
              child: Text(
                text,
                style: myTextStyle(TextDecoration.none, textColor, 16),
              )),
        ],
      ),
    );
  }
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(13),
      color: backgroundColor,
    ),
    child: TextButton(
        onPressed: onTap,
        child: Text(
          text,
          style: myTextStyle(TextDecoration.none, textColor, 16),
        )),
  );
}
