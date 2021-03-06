import 'dart:ui';
import 'package:ecommerce/pages/cart.dart';
import 'package:ecommerce/widgets/horizontal_listview.dart';
import 'package:ecommerce/widgets/products.dart';
import 'package:ecommerce/widgets/sidedrawer.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carusel = Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.white,
        dotBgColor: Colors.transparent,
        indicatorBgPadding: 5.0,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        backgroundColor: Colors.red,
        title: Text(
          'Fashion Mart',
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Cart()));
            },
          ),
        ],
      ),
      drawer: SideDrawer(),
      body: Column(
        children: [
          image_carusel,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Categories',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),

          //horizontal list view
          HorizontalListView(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Recent Products',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),

          //Grid View
          Flexible(
            child: Products(),
          ),
        ],
      ),
    );
  }
}
