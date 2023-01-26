import 'package:ecommerce/view/splash_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: "FASHION STORE",
    home: SplashScreen(),
    routes: {},
    theme: ThemeData(
      primaryColor: const Color.fromARGB(255, 220, 92, 91),
    ),
  ));
}
