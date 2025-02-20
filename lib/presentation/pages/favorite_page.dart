import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/presentation/pages/CartPage.dart';
import 'package:flutter_application_1/presentation/pages/home.dart';
import 'package:flutter_application_1/presentation/widgets/sneakerModel.dart';
import 'package:flutter_application_1/presentation/widgets/textstyle.dart';
import 'package:flutter_svg/svg.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
          height: 100,
          backgroundColor: Mycolors().block,
          destinations: [
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const HomePage()));
                },
                child: SvgPicture.asset("assets/images/home-2.svg")),
            SvgPicture.asset(
              "assets/images/Heart.svg",
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const CartPage()));
                },
                child: SvgPicture.asset(
                  "assets/images/shopBottom.svg",
                ),
              ),
            ),
            SvgPicture.asset("assets/images/notification.svg"),
            SvgPicture.asset("assets/images/person.svg")
          ]),
      backgroundColor: Mycolors().background,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60.0, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset("assets/images/Back.svg"),
                Text(
                  "Избранное",
                  style: myTextStyle(TextDecoration.none, Mycolors().text, 20),
                ),
                SvgPicture.asset("assets/images/Favorite.svg")
              ],
            ),
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
