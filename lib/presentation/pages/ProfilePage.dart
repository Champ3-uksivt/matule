import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/presentation/pages/loyaltyCard.dart';
import 'package:flutter_application_1/presentation/pages/redactProfilePage.dart';
import 'package:flutter_application_1/presentation/widgets/InputField.dart';
import 'package:flutter_application_1/presentation/widgets/navbar.dart';
import 'package:flutter_application_1/presentation/widgets/textstyle.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar2(),
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      "assets/images/Hamburger.svg",
                      fit: BoxFit.cover,
                      width: 35,
                      height: 30,
                    )),
                Text(
                  "Профиль",
                  style: myTextStyle(TextDecoration.none, Mycolors().text, 20),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => const RedactProfilePage()));
                  },
                  child: SvgPicture.asset(
                    "assets/images/redact.svg",
                    fit: BoxFit.cover,
                    height: 45,
                    width: 45,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Column(
            children: [
              Image.asset(
                "assets/images/profilepage.png",
                height: 100,
                width: 100,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Emmanuel Oyiboke",
                style: myTextStyle(TextDecoration.none, Mycolors().text, 20),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width - 50,
                decoration: BoxDecoration(
                    color: Mycolors().background,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => const Loyaltycard()));
                        },
                        child: Text(
                          "Открыть",
                          style: myTextStyle(
                              TextDecoration.none, Mycolors().text, 14),
                        ),
                      ),
                      Image.asset(
                        "assets/images/rita.png",
                        height: 50,
                        width: MediaQuery.of(context).size.width - 140,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 25,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: SingleChildScrollView(
                  controller: null,
                  child: Column(
                    children: [
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Имя",
                            style: myTextStyle(
                                TextDecoration.none, Mycolors().text, 16),
                          )),
                      InputField(
                        hintText: "Имя",
                        textEditingController:
                            TextEditingController(text: "Emanuel"),
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Фамилия",
                            style: myTextStyle(
                                TextDecoration.none, Mycolors().text, 16),
                          )),
                      InputField(
                        hintText: "Фамилия",
                        textEditingController:
                            TextEditingController(text: "Oyiboke"),
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Адрес",
                            style: myTextStyle(
                                TextDecoration.none, Mycolors().text, 16),
                          )),
                      InputField(
                        hintText: "Адрес",
                        textEditingController:
                            TextEditingController(text: "Nigeria"),
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Телефон",
                            style: myTextStyle(
                                TextDecoration.none, Mycolors().text, 16),
                          )),
                      InputField(
                        hintText: "Телефон ",
                        textEditingController:
                            TextEditingController(text: "+7 811-732-5298"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
