import 'package:ecommerce/view/components/search_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          // search bar
          Container(
            margin: EdgeInsets.only(right: 80, bottom: 30),
            child: SearchBar(),
          ),

          // TODO: ads cards
          Container(
            child: Card(),
          ),
          // TODO: categories
          // TODO: card products
        ],
      ),
    );
  }
}
