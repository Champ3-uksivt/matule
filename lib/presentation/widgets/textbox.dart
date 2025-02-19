import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/presentation/widgets/textstyle.dart';
import 'package:flutter_svg/svg.dart';

bool isRevealed = true;
TextFormField textBox(
    String hint, bool email, TextEditingController textEditingController) {
  //////
  /// Текстовый ввод,с двумя вариациями
  /// 1. Ввод пароля
  /// 2. Ввод логина (почты)
  var textBox = TextFormField(
    controller: textEditingController,
    obscureText: email ? false : isRevealed,
    keyboardType:
        email ? TextInputType.emailAddress : TextInputType.visiblePassword,
    decoration: InputDecoration(
      hintText: hint,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
      hintStyle: myTextStyle(TextDecoration.none, Mycolors().hint, 16),
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
