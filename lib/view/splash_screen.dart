import 'package:ecommerce/view/login.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart' as sc;

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return sc.SplashScreen(
      seconds: 5,
      backgroundColor: Theme.of(context).primaryColor,
      photoSize: 120.0,
      // TODO: round image or remove background
      image: Image.asset("assets/images/splash_screen_logo.png"),
      loaderColor: Colors.white,
      navigateAfterSeconds: Login(),
    );
  }
}
