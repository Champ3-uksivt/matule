import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyColors.dart';
import 'package:flutter_application_1/presentation/widgets/textstyle.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.Cost, required this.Title});
  final double Cost;
  final String Title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Mycolors().block),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
            decoration: BoxDecoration(
                color: Mycolors().background,
                borderRadius: BorderRadius.circular(30)),
            child: Image.asset(
              "assets/images/CartSneaker.png",
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Title,
                style: myTextStyle(TextDecoration.none, Mycolors().text, 16),
              ),
              Text(
                textAlign: TextAlign.start,
                "₽$Cost",
                style: myTextStyle(TextDecoration.none, Mycolors().text, 14),
              )
            ],
          ),
        ],
      ),
    );
  }
}
