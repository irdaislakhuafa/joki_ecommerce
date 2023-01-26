import 'package:ecommerce/view/components/search_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<String> categoryNames = [
      "All",
      "Man",
      "Woman",
      "Child",
      "Dress",
      "Trousers",
    ];

    List<Widget> categories = [];
    categoryNames.forEach((v) {
      categories.add(Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.only(left: 5, right: 5),
        padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
        child: Text(
          v,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ));
    });

    List<Widget> items = [
      // search bar
      Container(
        margin: EdgeInsets.only(right: 80, bottom: 30, top: 20),
        child: SearchBar(),
      ),

      // ads cards
      Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/ads.jpeg"),
            ),
          ),
          height: 230,
        ),
      ),

      // categories
      Container(
        margin: EdgeInsets.only(left: 5, right: 10, top: 10, bottom: 5),
        child: Text(
          "Categories",
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 5),
        child: Row(
          children: categories,
        ),
      )

      // TODO: card products
    ];

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: items,
      ),
    );
  }
}
