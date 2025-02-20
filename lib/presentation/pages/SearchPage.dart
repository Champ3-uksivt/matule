import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/presentation/widgets/ExpandexSearchBox.dart';
import 'package:flutter_application_1/presentation/widgets/textstyle.dart';
import 'package:flutter_svg/svg.dart';

TextEditingController textEditingController = TextEditingController();

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolors().background,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60.0, left: 15, right: 15),
            child: Row(
              children: [
                SvgPicture.asset("assets/images/Back.svg"),
                SizedBox(
                  width: 105,
                ),
                Text(
                  "Поиск",
                  style: myTextStyle(TextDecoration.none, Mycolors().text, 25),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SearchBoxExpanded(
            textEditingController: textEditingController,
          ),
          Expanded(
            child: ListView(
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images/Time.svg",
                      height: 40,
                      width: 40,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "New shoes",
                      style:
                          myTextStyle(TextDecoration.none, Mycolors().text, 18),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images/Time.svg",
                      height: 40,
                      width: 40,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "New shoes",
                      style:
                          myTextStyle(TextDecoration.none, Mycolors().text, 18),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images/Time.svg",
                      height: 40,
                      width: 40,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "New shoes",
                      style:
                          myTextStyle(TextDecoration.none, Mycolors().text, 18),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images/Time.svg",
                      height: 40,
                      width: 40,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "New shoes",
                      style:
                          myTextStyle(TextDecoration.none, Mycolors().text, 18),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images/Time.svg",
                      height: 40,
                      width: 40,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "New shoes",
                      style:
                          myTextStyle(TextDecoration.none, Mycolors().text, 18),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
