import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/presentation/pages/first_screen_page.dart';
import 'package:flutter_application_1/presentation/pages/second_screen_page.dart';
import 'package:flutter_application_1/presentation/pages/third_screen_page.dart';
import 'package:flutter_application_1/presentation/widgets/button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({
    super.key,
  });

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

PageController pageController = PageController();
int nowPage = 0;

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolors().accent,
      body: Column(
        children: [
          SizedBox(
            height: 700,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              controller: pageController,
              padding: EdgeInsets.all(0),
              physics: BouncingScrollPhysics(),
              children: [
                FirstScreenPage(),
                SecondScreenPage(),
                ThirdScreenPage()
              ],
            ),
          ),
          SizedBox(
            child: SmoothPageIndicator(
              axisDirection: Axis.horizontal,
              effect: WormEffect(
                  dotColor: Mycolors().block,
                  dotHeight: 10,
                  dotWidth: 40,
                  activeDotColor: Mycolors().text),
              controller: pageController,
              count: 3,
              onDotClicked: (dot) {
                nowPage = dot;
                setState(() {
                  pageController.jumpToPage(nowPage);
                });
              },
            ),
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width - 200,
            child: button(() {
              if (nowPage != 2) {
                setState(() {
                  pageController.jumpToPage(nowPage + 1);
                  nowPage = nowPage + 1;
                });
              } else {
                Navigator.pushNamed(context, '/signIn');
              }
            }, nowPage == 0 ? "Начать" : "Далее", Mycolors().text,
                Mycolors().block),
          )
        ],
      ),
    );
  }
}
