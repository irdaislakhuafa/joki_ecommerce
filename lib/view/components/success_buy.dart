import 'package:ecommerce/view/home.dart';
import 'package:flutter/material.dart';

class SuccessBuy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(30),
        child: Card(
          child: Container(
            padding: EdgeInsets.all(30),
            child: ListView(
              children: [
                Icon(
                  Icons.done,
                  size: 200,
                  color: Theme.of(context).primaryColor,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Success",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 80,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 50),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Theme.of(context).primaryColor),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Kembali",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
