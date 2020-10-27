import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120.0,
      "price": 85.0,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 120.0,
      "price": 85.0,
    },
    {
      "name": "Black Dress",
      "picture": "images/products/dress2.jpeg",
      "old_price": 120.0,
      "price": 85.0,
    },
    {
      "name": "Hill Shoes",
      "picture": "images/products/hills1.jpeg",
      "old_price": 120.0,
      "price": 85.0,
    },
    {
      "name": "Pants",
      "picture": "images/products/pants1.jpg",
      "old_price": 120.0,
      "price": 85.0,
    },
    {
      "name": "Skirt",
      "picture": "images/products/skt1.jpeg",
      "old_price": 120.0,
      "price": 85.0,
    },
    {
      "name": "Pink Skirt",
      "picture": "images/products/skt2.jpeg",
      "old_price": 120.0,
      "price": 85.0,
    },
    {
      "name": "Sport Shoes",
      "picture": "images/products/shoe1.jpg",
      "old_price": 120.0,
      "price": 85.0,
    },
    {
      "name": "Ladies Blazer",
      "picture": "images/products/blazer2.jpeg",
      "old_price": 120.0,
      "price": 85.0,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return SingleProduct(
          product_name: product_list[index]['name'],
          product_pic: product_list[index]['picture'],
          product_oldprice: product_list[index]['old_price'],
          product_price: product_list[index]['price'],
        );
      },
    );
  }
}

class SingleProduct extends StatelessWidget {
  final product_name;
  final product_pic;
  final product_oldprice;
  final product_price;

  SingleProduct(
      {this.product_name,
      this.product_pic,
      this.product_oldprice,
      this.product_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_name, child: Material(
        child: InkWell(
          onTap: () {},
          child: GridTile(
            footer: Container(
              color: Colors.white70,
              child: ListTile(
                leading: Text(
                  product_name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                title: Text(
                    "\$$product_price",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Colors.red,
                  ),
                ),
                subtitle: Text(
                  "\$$product_oldprice",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ),
            ),
            child: Image.asset(
                product_pic,
                fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      ),
    );
  }
}
