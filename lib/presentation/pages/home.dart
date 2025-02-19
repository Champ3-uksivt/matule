import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/presentation/widgets/search_box.dart';
import 'package:flutter_application_1/presentation/widgets/textstyle.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolors().background,
      body: Padding(
        padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  "assets/images/Hamburger.svg",
                  height: 40,
                  width: 40,
                ),
                Text(
                  "Главная",
                  style: myTextStyle(TextDecoration.none, Mycolors().text, 35,
                      weight: FontWeight.w900),
                ),
                SvgPicture.asset(
                  "assets/images/shop.svg",
                  height: 70,
                  width: 70,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width - 150,
                    height: 60,
                    child: SearchBox()),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Mycolors().accent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: SvgPicture.asset(
                    "assets/images/Sliders.svg",
                    height: 40,
                    width: 40,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Категории",
                  style: myTextStyle(TextDecoration.none, Mycolors().text, 20),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Все",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 20,
                        color: Color(0xFF48B2E7),
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
