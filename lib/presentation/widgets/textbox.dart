import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/presentation/widgets/textstyle.dart';
import 'package:flutter_svg/svg.dart';

bool isRevealed = false;
TextFormField textBox(String hint, bool email) {
  //////
  /// Текстовый ввод,с двумя вариациями
  /// 1. Ввод пароля
  /// 2. Ввод логина (почты)
  var textBox = TextFormField(
    obscureText: email ? false : isRevealed,
    decoration: InputDecoration(
      hintText: hint,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
      hintStyle: myTextStyle(TextDecoration.none, Mycolors().hint),
      suffixIcon: email
          ? null
          : IconButton(
              onPressed: () {
                isRevealed = !isRevealed;
              },
              icon: SvgPicture.asset("assets/images/Revealed.svg")),
    ),
  );
  return textBox;
}
