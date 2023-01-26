import 'package:ecommerce/view/components/success_buy.dart';
import 'package:flutter/material.dart';

class BuyNow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    var state = _BuyNow();

    return state;
  }
}

class _BuyNow extends State<BuyNow> {
  var _key = GlobalKey<FormState>();
  Object? _selectedCard = null;

  @override
  Widget build(BuildContext context) {
    var defaultValue = 1;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Beli Sekarang"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        margin: EdgeInsets.all(50),
        child: Card(
          child: Container(
            padding: EdgeInsets.all(30),
            child: ListView(
              children: [
                Row(
                  children: [
                    Radio(
                      value: defaultValue,
                      groupValue: _selectedCard,
                      onChanged: (value) {
                        setState(() {
                          _selectedCard = value;
                        });
                      },
                    ),
                    Container(
                      child: Icon(
                        Icons.payment,
                        size: 45,
                      ),
                    ),
                    Container(
                      child: Text(
                        "Bank Mandiri",
                        style: TextStyle(
                          fontSize: 35,
                        ),
                        overflow: TextOverflow.fade,
                      ),
                    )
                  ],
                ),
                // buy
                Container(
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
                          builder: (context) => SuccessBuy(),
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(15),
                      child: Text("Bayar Sekarang"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
