import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/presentation/pages/otppage.dart';
import 'package:flutter_application_1/presentation/pages/sign_in.dart';
import 'package:flutter_application_1/presentation/widgets/AlertDialogExpanded.dart';
import 'package:flutter_application_1/presentation/widgets/button.dart';
import 'package:flutter_application_1/presentation/widgets/textbox.dart';
import 'package:flutter_application_1/presentation/widgets/textstyle.dart';
import 'package:flutter_svg/svg.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolors().block,
      appBar: AppBar(
        backgroundColor: Mycolors().block,
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              "Забыл пароль",
              style: myTextStyle(TextDecoration.none, Mycolors().text, 35),
            ),
          ),
          Center(
            child: Text(
              textAlign: TextAlign.center,
              "Введите свою учетную запись\nдля сброса",
              style: myTextStyle(TextDecoration.none, Mycolors().hint, 20),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width - 60,
              child: Container(
                decoration: BoxDecoration(
                    color: Mycolors().background,
                    borderRadius: BorderRadius.circular(20)),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Mycolors().background,
                      hintText: "xyz@gmail.com",
                      hintStyle: myTextStyle(
                          TextDecoration.none, Mycolors().hint, 12)),
                ),
              )),
          SizedBox(
            height: 45,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width - 60,
            child: button(() {
              showDialog(
                  context: context,
                  builder: (context) {
                    return SizedBox(child: AlertDialogExpanded());
                  });
              //TODO do waiting
              Navigator.push(context,
                  CupertinoPageRoute(builder: (context) => const OtpPage()));
            }, "Отправить", Mycolors().background, Mycolors().accent),
          )
        ],
      ),
    );
  }
}
