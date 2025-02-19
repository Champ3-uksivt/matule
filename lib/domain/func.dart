import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/presentation/widgets/textstyle.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supa = Supabase.instance;

void TrySignIn(String email, String password, BuildContext context) {
  // Функция для авторизации внутрь приложения
  if (email.isEmpty || password.isEmpty) {
    log("empty fields");
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Text('Заполните пожалуйста поля для ввода'),
              actionsAlignment: MainAxisAlignment.center,
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Ок",
                      style:
                          myTextStyle(TextDecoration.none, Mycolors().text, 15),
                    ))
              ],
            ));
    return;
  }
  try {
    supa.client.auth.signInWithPassword(password: password, email: email);
    Navigator.pushNamed(context, "/mainPage");
    log("message");
  } catch (e) {
    log(e.toString());
  }
}
