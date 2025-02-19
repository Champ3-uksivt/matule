import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/presentation/widgets/textstyle.dart';

class FirstScreenPage extends StatelessWidget {
  const FirstScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Text(
          "Добро\nпожаловать",
          textAlign: TextAlign.center,
          style: myTextStyle(TextDecoration.none, Mycolors().block, 35,
              weight: FontWeight.bold),
        ),
        SizedBox(
          height: 50,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 350,
          child: Image.asset("assets/images/sneaker1.png"),
        )
      ],
    );
  }
}
