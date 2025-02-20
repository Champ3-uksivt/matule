import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/presentation/widgets/textstyle.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolors().block,
      appBar: AppBar(
        backgroundColor: Mycolors().block,
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              textAlign: TextAlign.center,
              "Регистрация",
              style: myTextStyle(TextDecoration.none, Mycolors().text, 25),
            ),
          ),
          SizedBox(
            height: 1,
          ),
          Center(
            child: Text(
              textAlign: TextAlign.center,
              'Заполните Свои Данные Или Продолжите Через Социальные Медиа',
              style:
                  myTextStyle(TextDecoration.none, Mycolors().subTextDart, 20),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width - 60,
              child: Container(
                  decoration: BoxDecoration(
                      color: Mycolors().background,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          fillColor: Mycolors().background,
                          hintText: "xyz@gmail.com",
                          hintStyle: myTextStyle(
                              TextDecoration.none, Mycolors().hint, 12))))),
        ],
      ),
    );
  }
}
