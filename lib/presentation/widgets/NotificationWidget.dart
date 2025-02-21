import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/presentation/widgets/textstyle.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: 10,
      children: [
        Container(
          margin: EdgeInsets.only(left: 10),
          alignment: Alignment.topLeft,
          child: Text(
            textAlign: TextAlign.start,
            "Заголовок",
            style: myTextStyle(TextDecoration.none, Mycolors().text, 20),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          child: Text(
            "Lorem ipsum dolor sit amet consectetur. Venenatis pulvinar lobortis risus consectetur morbi egestas id in bibendum. Volutpat nulla urna sit sed diam nulla.",
            softWrap: true,
            style: myTextStyle(TextDecoration.none, Mycolors().text, 16),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          alignment: Alignment.topLeft,
          child: Text(
            "27.01.2024, 15:42",
            style: myTextStyle(TextDecoration.none, Mycolors().subTextDart, 12),
          ),
        )
      ],
    );
  }
}
