import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/presentation/widgets/OrderDetailWidget.dart';

import 'package:flutter_application_1/presentation/widgets/textstyle.dart';
import 'package:flutter_svg/svg.dart';

class OrderDetailPage extends StatelessWidget {
  const OrderDetailPage({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        title: Text(
          text,
          style: myTextStyle(TextDecoration.none, Mycolors().text, 20),
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.bottomRight,
            padding: EdgeInsets.only(right: 10),
            child: Text(
              "7 мин. назад",
              style: myTextStyle(TextDecoration.none, Mycolors().hint, 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12),
            child: DetailPageItem(
                Cost: 814.15, Title: "Nike Air Max 270\nEssential", Count: "1"),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12),
            child: DetailPageItem(
                Cost: 814.15, Title: "Nike Air Max 270\nEssential", Count: "2"),
          ),
          Container(
              padding: EdgeInsets.only(left: 10), child: ContactInformation2())
        ],
      ),
    );
  }
}

class ContactInformation2 extends StatelessWidget {
  const ContactInformation2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Mycolors().block,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
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
                      style:
                          myTextStyle(TextDecoration.none, Mycolors().text, 16),
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
                    style:
                        myTextStyle(TextDecoration.none, Mycolors().text, 16),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      textAlign: TextAlign.start,
                      "Телефон",
                      style:
                          myTextStyle(TextDecoration.none, Mycolors().hint, 16),
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
                child: Image.asset("assets/images/MapOpen.png"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Способ оплаты",
                style: myTextStyle(TextDecoration.none, Mycolors().text, 20),
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
                      style:
                          myTextStyle(TextDecoration.none, Mycolors().text, 16),
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
    );
  }
}
