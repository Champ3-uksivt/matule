import 'package:flutter/material.dart';

TextStyle myTextStyle(TextDecoration decoration, Color color) {
  // Сообственный стиль текста, с уже выбранным шрифтом
  var textStyle = TextStyle(
    fontFamily: "Roboto",
    color: color,
    decoration: decoration,
  );
  return textStyle;
}
