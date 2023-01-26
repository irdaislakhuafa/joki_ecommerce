import 'package:ecommerce/view/components/search_bar.dart';
import 'package:ecommerce/view/product_details.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  // card products
  static var imageNames = [
    {
      "title": "Product A",
      "image": "assets/images/product_1.png",
      "desc": "Lorem Ipsum is simply dummy text",
      "long_desc":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      "amount": "Rp 10000",
    },
    {
      "title": "Product B",
      "image": "assets/images/product_2.png",
      "desc": "Lorem Ipsum is simply dummy text",
      "long_desc":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      "amount": "Rp 10000",
    },
    {
      "title": "Product C",
      "image": "assets/images/product_3.png",
      "desc": "Lorem Ipsum is simply dummy text",
      "long_desc":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      "amount": "Rp 10000",
    },
  ];

  @override
  State<StatefulWidget> createState() {
    var state = _HomeState();
    state.imageNames = imageNames;
    return state;
  }
}

class _HomeState extends State<Home> {
  List<Map<String, String>> imageNames = [];

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
        margin: EdgeInsets.only(top: 5, bottom: 20),
        child: Row(
          children: categories,
        ),
      )
    ];

    List<Widget> rowsProduct = [];

    items.add(
      Center(
        child: Wrap(
          spacing: 10,
          runSpacing: 5,
          children: List.generate(imageNames.length, (index) {
            return Container(
              width: 150,
              child: Card(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Image.asset(imageNames[index]["image"]!),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          imageNames[index]["title"]!,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(imageNames[index]["desc"]!),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Theme.of(context).primaryColor),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      ProductDetails(productID: index),
                                ),
                              );
                            },
                            child: Icon(Icons.list),
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Theme.of(context).primaryColor),
                            ),
                            onPressed: () {},
                            child: Icon(Icons.add_shopping_cart),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );

    var footer = [
      ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(Colors.white),
        ),
        onPressed: () {},
        child: Icon(
          Icons.home,
          color: Colors.black,
          size: 50,
        ),
      ),
      ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          elevation: MaterialStateProperty.all(0),
        ),
        onPressed: () {},
        child: Icon(
          Icons.shopping_cart,
          color: Colors.black,
          size: 50,
        ),
      ),
      ElevatedButton(
        clipBehavior: Clip.none,
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(Colors.white),
        ),
        onPressed: () {},
        child: Icon(
          Icons.person,
          color: Colors.black,
          size: 50,
        ),
      ),
    ];

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: items,
      ),
      bottomNavigationBar: BottomAppBar(
        // shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: footer,
        ),
      ),
    );
  }
}
