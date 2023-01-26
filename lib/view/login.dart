import 'package:flutter/material.dart';

import 'home.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          // logo
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10, left: 80, right: 80),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(900),
              child: Image.asset("assets/images/splash_screen_logo.jpeg"),
            ),
          ),

          // username
          Container(
            margin: EdgeInsets.only(bottom: 10, left: 80, right: 80),
            child: const Text(
              "Username",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 80, right: 80),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            // color: Colors.white,
            child: TextFormField(
              autofocus: true,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),

          // password
          Container(
            margin: EdgeInsets.only(bottom: 10, top: 20, left: 80, right: 80),
            child: const Text(
              "Password",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 80, right: 80, bottom: 40),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            // color: Colors.white,
            child: TextFormField(
              obscureText: true,
              autofocus: true,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),

          // login button
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(top: 20),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Theme.of(context).primaryColor),
                ),
                onPressed: () {
                  // TODO: to home page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  );
                },
                child: Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ),

          // store logo
          Container(
            padding: EdgeInsets.only(left: 80, right: 80, bottom: 100),
            color: Colors.white,
            child: Image.asset("assets/images/store.png"),
          )
        ],
      ),
    );
  }
}
