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
    return GestureDetector(
      child: sc.SplashScreen(
        seconds: 5,
        backgroundColor: Theme.of(context).primaryColor,
        photoSize: 120.0,
        image: Image.asset("assets/images/splash_screen_logo.png"),
        useLoader: false,
      ),
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Login()));
      },
    );
  }
}
