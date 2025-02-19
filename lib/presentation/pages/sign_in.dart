import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/presentation/widgets/textbox.dart';
import 'package:flutter_application_1/presentation/widgets/textstyle.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(30, 15, 30, 10),
        child: Column(
          children: [
            GestureDetector(
              child: Text(
                "Пропустить",
                style: myTextStyle(TextDecoration.none, Mycolors().subTextDart),
              ),
              onTap: () {
                log("Skip");
              },
            ),
            Center(
              child: Text(
                "Привет!",
                style: myTextStyle(TextDecoration.none, Mycolors().text),
              ),
            ),
            Center(
              child: Text(
                'Заполните Свои Данные Или Продолжите Через Социальные Медиа',
                style: myTextStyle(TextDecoration.none, Mycolors().subTextDart),
              ),
            ),
            SizedBox(
              child: Text("Email"),
            ),
            SizedBox(
              child: textBox("xyz@gmail.com", true),
            ),
            SizedBox(
              child: textBox("*******", false),
            ),
            SizedBox(
              child: GestureDetector(
                child: Text(
                  "Восстановить",
                  style: myTextStyle(TextDecoration.none, Mycolors().hint),
                ),
                onTap: () {
                  log("Reset clicked");
                },
              ),
            ),
            SizedBox(),
          ],
        ),
      ),
    );
  }
}
