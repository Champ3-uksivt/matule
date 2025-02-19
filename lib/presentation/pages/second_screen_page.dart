import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/presentation/widgets/textstyle.dart';

class SecondScreenPage extends StatelessWidget {
  const SecondScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Image.asset("assets/images/sneaker2.png"),
        ),
        SizedBox(
          child: Column(
            children: [
              Text(
                "Начнем путешествие",
                style: myTextStyle(TextDecoration.none, Mycolors().block, 25),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Умная, великолепная и модная коллекция\nИзучите сейчас",
                  textAlign: TextAlign.center,
                  style: myTextStyle(
                      TextDecoration.none, Mycolors().subTextLight, 18),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
