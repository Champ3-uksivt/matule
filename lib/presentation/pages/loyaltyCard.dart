import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/presentation/widgets/textstyle.dart';

class Loyaltycard extends StatelessWidget {
  const Loyaltycard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Карта лояльности",
          style: myTextStyle(TextDecoration.none, Mycolors().text, 20),
        ),
      ),
      body: Center(
        child: Image.asset("assets/images/profilepage.png"),
      ),
    );
  }
}
