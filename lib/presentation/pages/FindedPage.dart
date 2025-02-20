import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/presentation/widgets/ExpandexSearchBox.dart';
import 'package:flutter_application_1/presentation/widgets/sneakerModel.dart';
import 'package:flutter_application_1/presentation/widgets/textstyle.dart';
import 'package:flutter_svg/svg.dart';

class FindedPage extends StatelessWidget {
  const FindedPage({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: SearchBoxExpanded(
                textEditingController: TextEditingController(text: text)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height - 280,
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.8,
                ),
                itemCount: 12,
                padding: EdgeInsets.only(left: 25, right: 25),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Mycolors().block,
                              borderRadius: BorderRadius.circular(20)),
                          child: SneakerModel()),
                    ],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
