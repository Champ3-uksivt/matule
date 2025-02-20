import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/presentation/widgets/button.dart';
import 'package:flutter_application_1/presentation/widgets/textstyle.dart';
import 'package:flutter_svg/svg.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    //////
    ///Создал: Усман Хуснияров
    ///Объект: страница
    ///Описание: Страница для деталей о товаре, открывается при нажатии на товар
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 70, 15, 0),
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
                  "Sneaker Shop",
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
            Container(
              margin: EdgeInsets.only(top: 30),
              alignment: Alignment.centerLeft,
              child: Text(
                "Nike Air Max 270\nEssential",
                style: myTextStyle(TextDecoration.none, Mycolors().text, 24),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Men’s Shoes",
                style: myTextStyle(TextDecoration.none, Mycolors().hint, 20),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Image.asset(
              "assets/images/detailSneaker.png",
              height: 150,
              width: MediaQuery.of(context).size.width - 30,
            ),
            Image.asset(
              "assets/images/chooser.png",
              height: 150,
              width: MediaQuery.of(context).size.width,
            ),
            Text(
              "Вставка Max Air 270 обеспечивает непревзойденный комфорт в течение всего дня. Изящный дизайн",
              style: myTextStyle(TextDecoration.none, Mycolors().hint, 20),
              softWrap: true,
            ),
            Container(
              alignment: Alignment.centerRight,
              child: Text(
                "Подробнее",
                style: myTextStyle(TextDecoration.none, Mycolors().accent, 15),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  "assets/images/Favorite.svg",
                  height: 80,
                  width: 80,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 120,
                  child: button(
                      () {}, "В корзину", Colors.white, Mycolors().accent,
                      addtoKorzina: true),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
