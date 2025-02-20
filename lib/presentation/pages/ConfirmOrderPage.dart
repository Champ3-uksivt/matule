import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/presentation/pages/home.dart';
import 'package:flutter_application_1/presentation/widgets/button.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_application_1/presentation/widgets/textstyle.dart';

class ConfirmOrderPage extends StatelessWidget {
  const ConfirmOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolors().background,
      appBar: AppBar(
        backgroundColor: Mycolors().background,
        title: Text(
          "Корзина",
          style: myTextStyle(TextDecoration.none, Mycolors().text, 24),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.only(left: 15),
            margin: EdgeInsets.only(left: 20, right: 20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Mycolors().block,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Text(
                  "Контактная информация",
                  style: myTextStyle(TextDecoration.none, Mycolors().text, 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SvgPicture.asset("assets/images/Email.svg"),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "emmanuel@gmail.com",
                          style: myTextStyle(
                              TextDecoration.none, Mycolors().text, 16),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            textAlign: TextAlign.start,
                            "Email",
                            style: myTextStyle(
                                TextDecoration.none, Mycolors().hint, 16),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    SvgPicture.asset(
                      "assets/images/Edit.svg",
                      width: 35,
                      height: 35,
                    ),
                  ],
                ),
                Row(children: [
                  SvgPicture.asset("assets/images/Phone.svg"),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "+234-811-732-5298",
                        style: myTextStyle(
                            TextDecoration.none, Mycolors().text, 16),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          textAlign: TextAlign.start,
                          "Телефон",
                          style: myTextStyle(
                              TextDecoration.none, Mycolors().hint, 16),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 85,
                  ),
                  SvgPicture.asset(
                    "assets/images/Edit.svg",
                    width: 35,
                    height: 35,
                  ),
                ]),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Адрес",
                            style: myTextStyle(
                                TextDecoration.none, Mycolors().text, 16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              textAlign: TextAlign.start,
                              "1082 Аэропорт, Нигерии",
                              style: myTextStyle(
                                  TextDecoration.none, Mycolors().hint, 16),
                            ),
                          )
                        ]),
                    SizedBox(
                      width: 100,
                    ),
                    SvgPicture.asset(
                      "assets/images/Edit.svg",
                      width: 35,
                      height: 35,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Image.asset("assets/images/Map.png"),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Способ оплаты",
                    style:
                        myTextStyle(TextDecoration.none, Mycolors().text, 20),
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/Group 82.jpg",
                      fit: BoxFit.cover,
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "DbL Card",
                          textAlign: TextAlign.left,
                          style: myTextStyle(
                              TextDecoration.none, Mycolors().text, 16),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            textAlign: TextAlign.center,
                            "**** **** 0696 4629",
                            style: myTextStyle(
                                TextDecoration.none, Mycolors().hint, 16),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    SvgPicture.asset(
                      "assets/images/Arrow.svg",
                      height: 30,
                      width: 30,
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
              decoration: BoxDecoration(color: Mycolors().background),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Сумма",
                          style: myTextStyle(
                              TextDecoration.none, Mycolors().subTextDart, 20),
                        ),
                        Text(
                          "₽753.95",
                          style: myTextStyle(
                              TextDecoration.none, Mycolors().subTextDart, 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Доставка",
                          style: myTextStyle(
                              TextDecoration.none, Mycolors().subTextDart, 20),
                        ),
                        Text(
                          "₽60.20",
                          style: myTextStyle(
                              TextDecoration.none, Mycolors().subTextDart, 20),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Итого",
                          style: myTextStyle(
                              TextDecoration.none, Mycolors().text, 20),
                        ),
                        Text(
                          "₽814.15",
                          style: myTextStyle(
                              TextDecoration.none, Mycolors().accent, 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 60,
                      child: button(() {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return SizedBox(
                                height: 150,
                                width: 150,
                                child: AlertDialogCongrut(),
                              );
                            });
                      }, "Подтвердить", Mycolors().block, Mycolors().accent),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

class AlertDialogCongrut extends StatelessWidget {
  const AlertDialogCongrut({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      constraints: BoxConstraints(maxHeight: 300, maxWidth: 300),
      height: 300,
      child: AlertDialog(
        backgroundColor: Mycolors().block,
        content: Container(
          height: 400,
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/Congrut2.png",
                height: 150,
                fit: BoxFit.cover,
                width: 150,
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                textAlign: TextAlign.center,
                "Вы успешно оформили заказ",
                style: myTextStyle(TextDecoration.none, Mycolors().text, 24),
              ),
              SizedBox(
                height: 35,
              ),
              button(() {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => const HomePage()));
              }, "Вернуться к покупкам", Mycolors().block, Mycolors().accent)
            ],
          ),
        ),
      ),
    );
  }
}
