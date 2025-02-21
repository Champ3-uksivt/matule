import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/presentation/widgets/textstyle.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.hintText,
    required this.textEditingController,
  });
  final String hintText;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Mycolors().background,
            borderRadius: BorderRadius.circular(20)),
        child: TextFormField(
            enabled: false,
            style: myTextStyle(TextDecoration.none, Mycolors().text, 16),
            controller: textEditingController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                fillColor: Mycolors().background,
                hintText: hintText,
                hintStyle:
                    myTextStyle(TextDecoration.none, Mycolors().hint, 12))));
  }
}
