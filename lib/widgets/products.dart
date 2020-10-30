import 'package:ecommerce/pages/product_details.dart';
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
      "brand": "Zara",
      "description":
          "this is detail of the page from the list this is detail of the page from the list this is detail of the page from the list this is detail of the page from the list",
      "condition": "New",
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 120.0,
      "price": 85.0,
      "brand": "Zara",
      "description":
          "this is detail of the page from the list this is detail of the page from the list this is detail of the page from the list this is detail of the page from the list",
      "condition": "New",
    },
    {
      "name": "Black Dress",
      "picture": "images/products/dress2.jpeg",
      "old_price": 120.0,
      "price": 85.0,
      "brand": "Zara",
      "description":
          "this is detail of the page from the list this is detail of the page from the list this is detail of the page from the list this is detail of the page from the list",
      "condition": "New",
    },
    {
      "name": "Hill Shoes",
      "picture": "images/products/hills1.jpeg",
      "old_price": 120.0,
      "price": 85.0,
      "brand": "Zara",
      "description":
          "this is detail of the page from the list this is detail of the page from the list this is detail of the page from the list this is detail of the page from the list",
      "condition": "New",
    },
    {
      "name": "Pants",
      "picture": "images/products/pants1.jpg",
      "old_price": 120.0,
      "price": 85.0,
      "brand": "Zara",
      "description":
          "this is detail of the page from the list this is detail of the page from the list this is detail of the page from the list this is detail of the page from the list",
      "condition": "New",
    },
    {
      "name": "Skirt",
      "picture": "images/products/skt1.jpeg",
      "old_price": 120.0,
      "price": 85.0,
      "brand": "Zara",
      "description":
          "this is detail of the page from the list this is detail of the page from the list this is detail of the page from the list this is detail of the page from the list",
      "condition": "New",
    },
    {
      "name": "Pink Skirt",
      "picture": "images/products/skt2.jpeg",
      "old_price": 120.0,
      "price": 85.0,
      "brand": "Zara",
      "description":
          "this is detail of the page from the list this is detail of the page from the list this is detail of the page from the list this is detail of the page from the list",
      "condition": "New",
    },
    {
      "name": "Sport Shoes",
      "picture": "images/products/shoe1.jpg",
      "old_price": 120.0,
      "price": 85.0,
      "brand": "Zara",
      "description":
          "this is detail of the page from the list this is detail of the page from the list this is detail of the page from the list this is detail of the page from the list",
      "condition": "New",
    },
    {
      "name": "Ladies Blazer",
      "picture": "images/products/blazer2.jpeg",
      "old_price": 120.0,
      "price": 85.0,
      "brand": "Zara",
      "description":
          "this is detail of the page from the list this is detail of the page from the list this is detail of the page from the list this is detail of the page from the list",
      "condition": "New",
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
          product_brand: product_list[index]['brand'],
          product_condition: product_list[index]['condition'],
          product_description: product_list[index]['description'],
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
  final product_brand;
  final product_description;
  final product_condition;

  SingleProduct(
      {this.product_name,
      this.product_pic,
      this.product_oldprice,
      this.product_price,
      this.product_brand,
      this.product_condition,
      this.product_description});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductDetails(
                  product_detail_name: product_name,
                  product_detail_pic: product_pic,
                  product_detail_oldprice: product_oldprice,
                  product_detail_price: product_price,
                  product_detail_brand: product_brand,
                  product_detail_condition: product_condition,
                  product_detail_description: product_description,
                ),
              ),
            ),
            child: GridTile(
              footer: Container(
                height: 35.0,
                color: Colors.white,
                // child: ListTile(
                //   leading: Text(
                //     product_name,
                //     style: TextStyle(
                //       fontWeight: FontWeight.bold,
                //     ),
                //   ),
                //   title: Text(
                //     "\$$product_price",
                //     style: TextStyle(
                //       fontWeight: FontWeight.w800,
                //       color: Colors.red,
                //     ),
                //   ),
                //   subtitle: Text(
                //     "\$$product_oldprice",
                //     style: TextStyle(
                //       fontWeight: FontWeight.bold,
                //       color: Colors.black,
                //       decoration: TextDecoration.lineThrough,
                //     ),
                //   ),
                // ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          product_name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Text(
                        "\$$product_price",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
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
