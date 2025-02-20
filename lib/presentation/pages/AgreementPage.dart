import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/presentation/widgets/textstyle.dart';

class AgreementPage extends StatelessWidget {
  const AgreementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Соглашение \nоб обработке данных",
          softWrap: true,
          style: myTextStyle(TextDecoration.none, Mycolors().text, 24),
        ),
      ),
      body: Image.asset("assets/images/Congrut2.png"),
    );
  }
}
