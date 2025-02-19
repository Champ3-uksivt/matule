import 'package:flutter/material.dart';

TextStyle myTextStyle(TextDecoration decoration, Color color, double fontSize) {
  // Сообственный стиль текста, с уже выбранным шрифтом
  var textStyle = TextStyle(
    fontFamily: "Roboto",
    fontSize: fontSize,
    color: color,
    decoration: decoration,
  );
  return textStyle;
}
