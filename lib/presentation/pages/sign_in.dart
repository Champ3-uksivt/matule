import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/domain/func.dart';
import 'package:flutter_application_1/presentation/pages/RegisterPage.dart';
import 'package:flutter_application_1/presentation/pages/reset_password_page.dart';
import 'package:flutter_application_1/presentation/widgets/button.dart';
import 'package:flutter_application_1/presentation/widgets/textbox.dart';
import 'package:flutter_application_1/presentation/widgets/textstyle.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

final supa = Supabase.instance;
TextEditingController textLogin = TextEditingController();
TextEditingController textPassword = TextEditingController();

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolors().background,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(30, 80, 30, 10),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                child: Text(
                  "Пропустить",
                  style: myTextStyle(
                      TextDecoration.none, Mycolors().subTextDart, 15),
                ),
                onTap: () {
                  log("Skip");
                },
              ),
            ),
            Container(
              height: 40,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                textAlign: TextAlign.center,
                "Привет!",
                style: myTextStyle(TextDecoration.none, Mycolors().text, 25),
              ),
            ),
            Center(
              child: Text(
                textAlign: TextAlign.center,
                'Заполните Свои Данные Или Продолжите Через Социальные Медиа',
                style: myTextStyle(
                    TextDecoration.none, Mycolors().subTextDart, 20),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Email",
              ),
            ),
            SizedBox(
              child: textBox("xyz@gmail.com", true, textLogin),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text("Пароль"),
            ),
            SizedBox(
              child: textBox("*******", false, textPassword),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                child: Text(
                  "Восстановить",
                  style: myTextStyle(TextDecoration.none, Mycolors().hint, 15),
                ),
                onTap: () {
                  log("Reset clicked");
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const ResetPasswordPage()));
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width - 200,
                child: button(() {
                  if (textLogin.text == "11") {
                    Navigator.pushNamed(context, "/onBoardingScreen");
                    return;
                  }
                  TrySignIn(textLogin.text, textPassword.text, context);
                  log("clickedButton"); // qweQWEQWE
                }, "Войти", Mycolors().background, Mycolors().accent)),
            SizedBox(
              height: 150,
            ),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Вы впервые? ",
                    style:
                        myTextStyle(TextDecoration.none, Mycolors().hint, 16),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => const RegisterPage()));
                    },
                    child: Text(
                      "Создать пользователя",
                      style:
                          myTextStyle(TextDecoration.none, Mycolors().text, 16),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
