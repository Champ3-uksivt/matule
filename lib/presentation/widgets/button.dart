import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/widgets/textstyle.dart';

Widget button(
    Function()? onTap, String text, Color textColor, Color backgroundColor) {
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
