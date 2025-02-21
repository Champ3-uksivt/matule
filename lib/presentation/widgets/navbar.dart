import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/presentation/pages/CartPage.dart';
import 'package:flutter_application_1/presentation/pages/home.dart';
import 'package:flutter_svg/svg.dart';

class NavBar2 extends StatelessWidget {
  const NavBar2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
        height: 100,
        backgroundColor: Mycolors().block,
        destinations: [
          GestureDetector(
              onTap: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => const HomePage()));
              },
              child: SvgPicture.asset("assets/images/home-2.svg")),
          SvgPicture.asset(
            "assets/images/heartNo.svg",
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => const CartPage()));
              },
              child: SvgPicture.asset(
                "assets/images/shopBottom.svg",
              ),
            ),
          ),
          SvgPicture.asset("assets/images/notification.svg"),
          SvgPicture.asset(
            "assets/images/person.svg",
            color: Mycolors().accent,
          )
        ]);
  }
}
