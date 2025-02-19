import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/pages/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Matule", theme: ThemeData(), routes: {
      "/": (context) => const SignInPage(),
    });
  }
}
