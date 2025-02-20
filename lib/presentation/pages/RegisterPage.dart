import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/presentation/widgets/button.dart';
import 'package:flutter_application_1/presentation/widgets/textstyle.dart';
import 'package:flutter_svg/svg.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

bool isRevealed = false;

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
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 30),
            child: Text(
              "Ваше имя",
              style: myTextStyle(TextDecoration.none, Mycolors().text, 16),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width - 50,
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
                          hintText: "xxxxxxxxx",
                          hintStyle: myTextStyle(
                              TextDecoration.none, Mycolors().hint, 12))))),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 30),
            child: Text(
              "Электронная почта",
              style: myTextStyle(TextDecoration.none, Mycolors().text, 16),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width - 50,
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
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 30),
            child: Text(
              "Пароль",
              style: myTextStyle(TextDecoration.none, Mycolors().text, 16),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width - 50,
              child: Container(
                  decoration: BoxDecoration(
                      color: Mycolors().background,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextFormField(
                      obscureText: isRevealed,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                          suffixIconColor: Mycolors().hint,
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isRevealed = !isRevealed;
                                  });
                                },
                                child: isRevealed == false
                                    ? SvgPicture.asset(
                                        "assets/images/Revealed.svg")
                                    : SvgPicture.asset(
                                        "assets/images/Eye-Close.svg"),
                              )),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          fillColor: Mycolors().background,
                          hintText: "**********",
                          hintStyle: myTextStyle(
                              TextDecoration.none, Mycolors().hint, 12))))),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.only(left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  "assets/images/adguard.svg",
                  width: 50,
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Даю согласие на обработку\nперсональных данных",
                    style: myTextStyle(
                        TextDecoration.underline, Mycolors().hint, 16),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
              width: MediaQuery.of(context).size.width - 60,
              child: button(() {}, "Зарегистрироваться", Mycolors().background,
                  Mycolors().accent)),
          SizedBox(
            height: 130,
          ),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Есть аккаунт?",
                  style: myTextStyle(TextDecoration.none, Mycolors().hint, 16),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/signIn");
                    },
                    child: Text(
                      "Войти",
                      style:
                          myTextStyle(TextDecoration.none, Mycolors().text, 16),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
