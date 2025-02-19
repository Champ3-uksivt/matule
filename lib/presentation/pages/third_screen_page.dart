import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/presentation/widgets/textstyle.dart';

class ThirdScreenPage extends StatelessWidget {
  const ThirdScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Image.asset("assets/images/sneaker3.png"),
        ),
        SizedBox(
          child: Column(
            children: [
              Text(
                "У вас есть сила, чтобы",
                style: myTextStyle(
                  TextDecoration.none,
                  Mycolors().block,
                  25,
                ),
              ),
              Text(
                textAlign: TextAlign.center,
                "В вашей комнате много красивых\n и привлекательных растений",
                style: myTextStyle(
                    TextDecoration.none, Mycolors().subTextLight, 18),
              )
            ],
          ),
        ),
      ],
    );
  }
}
