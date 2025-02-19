import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_svg/svg.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Mycolors().block,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: Mycolors().block,
          prefixIcon: SizedBox(
            child: SvgPicture.asset(
              "assets/images/Marker.svg",
              color: Mycolors().hint,
            ),
          ),
          hintText: "Поиск",
        ),
        readOnly: true,
        cursorWidth: 0,
      ),
    );
  }
}
