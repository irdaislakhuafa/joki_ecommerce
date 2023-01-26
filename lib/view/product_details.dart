import 'package:ecommerce/view/home.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  int productID = 0;

  ProductDetails({Key? key, required this.productID}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    var state = _ProductDetailsState();

    state.productID = this.productID;

    return state;
  }
}

class _ProductDetailsState extends State<ProductDetails> {
  int productID = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(Home.imageNames[this.productID]["title"]!),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: Card(
                child: Image.asset(Home.imageNames[this.productID]["image"]!),
              ),
            ),
            Text(
              Home.imageNames[this.productID]["desc"]!,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(),
            Text(
              Home.imageNames[this.productID]["amount"]!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const Divider(),
            Container(
              child: Text(Home.imageNames[this.productID]["long_desc"]!),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).primaryColor),
                    ),
                    onPressed: () {},
                    child: Container(
                      padding: EdgeInsets.all(15),
                      child: Text("Beli Sekarang"),
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).primaryColor),
                    ),
                    onPressed: () {},
                    child: Container(
                      padding: EdgeInsets.all(11),
                      child: Icon(Icons.add_shopping_cart),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
