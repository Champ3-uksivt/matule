import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/presentation/widgets/CartItem.dart';
import 'package:flutter_application_1/presentation/widgets/HistoryOrderWidget.dart';
import 'package:flutter_application_1/presentation/widgets/textstyle.dart';

class MyOrdersPage extends StatelessWidget {
  const MyOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolors().background,
      appBar: AppBar(
        toolbarHeight: 30,
        title: Text(
          "Заказы",
          style: myTextStyle(TextDecoration.none, Mycolors().text, 20),
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Недавний",
              style: myTextStyle(TextDecoration.none, Mycolors().text, 20),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 250,
            child: ListView(
              padding: EdgeInsets.only(left: 10, right: 10),
              children: [
                HistoryOrderWidget(),
                SizedBox(
                  height: 10,
                ),
                HistoryOrderWidget()
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Вчера",
              style: myTextStyle(TextDecoration.none, Mycolors().text, 20),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: HistoryOrderWidget(),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: CartItem(Cost: 94.05, Title: "Nike Air Max 200"),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: CartItem(Cost: 584.95, Title: "Nike Club Max"),
          ),
        ],
      ),
    );
  }
}
