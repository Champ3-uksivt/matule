import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/presentation/widgets/textstyle.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolors().block,
      appBar: AppBar(
        backgroundColor: Mycolors().block,
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              "OTP Проверка",
              style: myTextStyle(TextDecoration.none, Mycolors().text, 26),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width - 30,
            child: Text(
              textAlign: TextAlign.center,
              "Пожалуйста, проверьте свою электронную почту, чтобы увидеть код подтверждения",
              softWrap: true,
              style:
                  myTextStyle(TextDecoration.none, Mycolors().subTextDart, 16),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(left: 30),
            child: Text(
              "OTP Код",
              style: myTextStyle(TextDecoration.none, Mycolors().text, 16),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OtpTextField(
                filled: true,
                showFieldAsBox: true,
                fillColor: Mycolors().background,
                borderRadius: BorderRadius.circular(10),
                fieldWidth: 50,
              ),
              OtpTextField(
                fieldWidth: 50,
                numberOfFields: 2,
                borderRadius: BorderRadius.circular(10),
                filled: true,
                fillColor: Mycolors().background,
                showFieldAsBox: true,
                decoration: InputDecoration(),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 15.0, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Отправить заново",
                  style: myTextStyle(TextDecoration.none, Mycolors().hint, 16),
                ),
                Text(
                  "00:30",
                  style: myTextStyle(TextDecoration.none, Mycolors().hint, 16),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
