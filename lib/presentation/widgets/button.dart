import 'package:flutter/material.dart';

ElevatedButton button(Function()? onTap, String text) {
  ElevatedButton elevatedButton =
      ElevatedButton(onPressed: onTap, child: Text("text"));
  return elevatedButton;
}
