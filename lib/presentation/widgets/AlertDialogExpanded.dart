import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/presentation/widgets/textstyle.dart';
import 'package:flutter_svg/svg.dart';

class AlertDialogExpanded extends StatefulWidget {
  const AlertDialogExpanded({
    super.key,
  });
  @override
  State<AlertDialogExpanded> createState() => _AlertDialogExpandedState();
}

class _AlertDialogExpandedState extends State<AlertDialogExpanded> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      constraints: BoxConstraints(maxHeight: 500, maxWidth: 600),
      height: 400,
      child: AlertDialog(
        backgroundColor: Mycolors().block,
        content: Container(
          height: 250,
          width: 500,
          child: Column(
            children: [
              Container(
                  height: 65,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Mycolors().accent,
                      borderRadius: BorderRadius.circular(70)),
                  child: SvgPicture.asset(
                    "assets/images/Emaik.svg",
                    alignment: Alignment.center,
                    width: 10,
                    height: 10,
                  )),
              Center(
                  child: Text(
                "Проверьте Ваш Email",
                style: myTextStyle(TextDecoration.none, Mycolors().text, 24),
              )),
              Center(
                child: Text(
                  textAlign: TextAlign.center,
                  "Мы Отправили Код Восстановления На Вашу Электронную Почту",
                  style: myTextStyle(TextDecoration.none, Mycolors().hint, 26),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
