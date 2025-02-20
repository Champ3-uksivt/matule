import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/presentation/widgets/CartItem.dart';
import 'package:flutter_application_1/presentation/widgets/button.dart';
import 'package:flutter_application_1/presentation/widgets/textstyle.dart';
import 'package:flutter_svg/svg.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

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
                  width: 100,
                ),
                Text(
                  "Корзина",
                  style: myTextStyle(TextDecoration.none, Mycolors().text, 20),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "3 Товара",
              style: myTextStyle(TextDecoration.none, Mycolors().text, 20),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width - 40,
            height: MediaQuery.of(context).size.height - 400,
            child: ListView(
              children: [
                CartItem(Cost: 584.95, Title: "Nike Club Max"),
                SizedBox(
                  height: 20,
                ),
                CartItem(Cost: 94.05, Title: "Nike Air Max 200"),
                SizedBox(
                  height: 20,
                ),
                CartItem(Cost: 74.95, Title: "Nike Air Max 270 Essential"),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Mycolors().block),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Сумма",
                        style: myTextStyle(
                            TextDecoration.none, Mycolors().subTextDart, 20),
                      ),
                      Text(
                        "₽753.95",
                        style: myTextStyle(
                            TextDecoration.none, Mycolors().subTextDart, 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Доставка",
                        style: myTextStyle(
                            TextDecoration.none, Mycolors().subTextDart, 20),
                      ),
                      Text(
                        "₽60.20",
                        style: myTextStyle(
                            TextDecoration.none, Mycolors().subTextDart, 20),
                      ),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Итого",
                        style: myTextStyle(
                            TextDecoration.none, Mycolors().text, 20),
                      ),
                      Text(
                        "₽814.15",
                        style: myTextStyle(
                            TextDecoration.none, Mycolors().accent, 20),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 60,
                    child: button(() {}, "Оформить заказ", Mycolors().block,
                        Mycolors().accent),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
