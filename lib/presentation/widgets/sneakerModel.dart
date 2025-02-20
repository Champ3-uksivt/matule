import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/presentation/widgets/DetailsPage.dart';
import 'package:flutter_application_1/presentation/widgets/textstyle.dart';
import 'package:flutter_svg/svg.dart';

class SneakerModel extends StatelessWidget {
  const SneakerModel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: SvgPicture.asset(
            "assets/images/Favorite.svg",
            height: 30,
            width: 30,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                CupertinoPageRoute(builder: (context) => const DetailsPage()));
          },
          child: Image.asset(
            "assets/images/nike.png",
            height: 100,
            width: 100,
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "BEST SELLER",
            style: myTextStyle(TextDecoration.none, Mycolors().accent, 14),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "Nike Air Max",
            style: myTextStyle(TextDecoration.none, Mycolors().hint, 14),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "₽752.00",
              style: myTextStyle(TextDecoration.none, Mycolors().text, 14),
            ),
            SvgPicture.asset(
              "assets/images/Plus.svg",
              width: 40,
              height: 40,
            )
          ],
        )
      ],
    );
  }
}
