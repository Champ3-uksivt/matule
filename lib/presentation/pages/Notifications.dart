import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/presentation/pages/CartPage.dart';
import 'package:flutter_application_1/presentation/pages/ProfilePage.dart';
import 'package:flutter_application_1/presentation/pages/home.dart';
import 'package:flutter_application_1/presentation/widgets/NotificationWidget.dart';
import 'package:flutter_application_1/presentation/widgets/textstyle.dart';
import 'package:flutter_svg/svg.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolors().block,
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
              "assets/images/heartNo.svg",
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
            GestureDetector(
                onTap: () {},
                child: SvgPicture.asset("assets/images/NotificationBlue.svg")),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const ProfilePage()));
                },
                child: SvgPicture.asset("assets/images/person.svg"))
          ]),
      body: Padding(
        padding: const EdgeInsets.only(top: 60.0, left: 10, right: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  "assets/images/Hamburger.svg",
                  height: 30,
                  width: 30,
                ),
                Text(
                  "Уведомления",
                  style: myTextStyle(TextDecoration.none, Mycolors().text, 25,
                      weight: FontWeight.normal),
                ),
                SizedBox(width: 35, child: Text(""))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height - 240,
                child: GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 2,
                  ),
                  itemCount: 6,
                  padding: EdgeInsets.only(left: 25, right: 25),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              color: Mycolors().background,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: NotificationWidget()),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
