import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/presentation/widgets/button.dart';
import 'package:flutter_application_1/presentation/widgets/navbar.dart';
import 'package:flutter_application_1/presentation/widgets/textstyle.dart';
import 'package:flutter_svg/svg.dart';

class RedactProfilePage extends StatelessWidget {
  const RedactProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar2(),
      body: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 15),
            child: Center(
              child: SizedBox(
                width: 200,
                height: 40,
                child: button(() {
                  Navigator.pop(context);
                }, 'Сохранить', Mycolors().block, Mycolors().accent),
              ),
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
                      Text(
                        "Открыть",
                        style: myTextStyle(
                            TextDecoration.none, Mycolors().text, 14),
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
                      InputField3(
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
                      InputField3(
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
                      InputField3(
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
                      InputField3(
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

class InputField3 extends StatelessWidget {
  const InputField3({
    super.key,
    required this.hintText,
    required this.textEditingController,
  });
  final String hintText;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Mycolors().background,
            borderRadius: BorderRadius.circular(20)),
        child: TextFormField(
            style: myTextStyle(TextDecoration.none, Mycolors().text, 16),
            controller: textEditingController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                fillColor: Mycolors().background,
                hintText: hintText,
                suffix: SizedBox(
                    child: SvgPicture.asset("assets/images/galka.svg")),
                hintStyle:
                    myTextStyle(TextDecoration.none, Mycolors().hint, 12))));
  }
}
