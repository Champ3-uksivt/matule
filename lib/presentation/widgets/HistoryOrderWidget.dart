import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/presentation/pages/OrderDetailPage.dart';
import 'package:flutter_application_1/presentation/widgets/textstyle.dart';

class HistoryOrderWidget extends StatelessWidget {
  const HistoryOrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Mycolors().block),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
            decoration: BoxDecoration(
                color: Mycolors().background,
                borderRadius: BorderRadius.circular(30)),
            child: Image.asset(
              "assets/images/CartSneaker.png",
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) =>
                                  const OrderDetailPage(text: "325556516")));
                    },
                    child: Text(
                      "№ 325556516",
                      style: myTextStyle(
                          TextDecoration.none, Mycolors().accent, 16),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "7 мин. назад",
                    style:
                        myTextStyle(TextDecoration.none, Mycolors().hint, 16),
                  ),
                ],
              ),
              Text(
                "Nike Air Max 270\nEssential",
                style: myTextStyle(TextDecoration.none, Mycolors().text, 16),
              ),
              Row(
                children: [
                  Text(
                    textAlign: TextAlign.start,
                    r"$364.95",
                    style:
                        myTextStyle(TextDecoration.none, Mycolors().text, 14),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    textAlign: TextAlign.start,
                    r"$364.95",
                    style:
                        myTextStyle(TextDecoration.none, Mycolors().hint, 14),
                  ),
                ],
              )
            ],
          ),
          //
        ],
      ),
    );
  }
}
