import 'package:ecommerce/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_pic;
  final product_detail_price;
  final product_detail_oldprice;
  final product_detail_description;
  final product_detail_brand;
  final product_detail_condition;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_pic,
    this.product_detail_oldprice,
    this.product_detail_price,
    this.product_detail_description,
    this.product_detail_brand,
    this.product_detail_condition,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        backgroundColor: Colors.red,
        title: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          },
          child: Text(
            'Fashion Mart',
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_pic),
              ),
              footer: Container(
                color: Colors.white60,
                child: ListTile(
                  leading: Text(
                    widget.product_detail_name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.red,
                    ),
                  ),
                  title: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "\$${widget.product_detail_oldprice}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "\$${widget.product_detail_price}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // ++++++++ Button ++++++++
          Row(
            children: [
              // +++++ Size Button +++++
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: new Text(
                            'Size',
                          ),
                          content: Text(
                            'Choose the size:',
                          ),
                          actions: [
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text(
                                'Close',
                              ),
                            )
                          ],
                        );
                      },
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("Size"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
              // +++++ Color Button +++++
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: new Text(
                            'Color',
                          ),
                          content: Text(
                            'Choose the Color:',
                          ),
                          actions: [
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text(
                                'Close',
                              ),
                            )
                          ],
                        );
                      },
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("Color"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
              // +++++ Quantity Button +++++
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: new Text(
                            'Quantity',
                          ),
                          content: Text(
                            'Choose the Quantity:',
                          ),
                          actions: [
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text(
                                'Close',
                              ),
                            )
                          ],
                        );
                      },
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("Qty"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // ++++++++ Button ++++++++
          Row(
            children: [
              // +++++ Buy Now Button +++++
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text(
                    "Buy Now",
                  ),
                ),
              ),
              // +++++ Shoping Cart Icon Buttion +++++
              IconButton(
                icon: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
              // +++++ Favorite Icon Buttion +++++
              IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
            ],
          ),

          Divider(),
          ListTile(
            title: Text(
              'Product Details',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            subtitle: Text(
              widget.product_detail_description,
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Divider(),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text(
                  "Product name",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  widget.product_detail_name,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text(
                  "Product Brand",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  widget.product_detail_brand,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text(
                  "Product Condition",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  widget.product_detail_condition,
                ),
              ),
            ],
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 5, 5, 5.0),
            child: Text(
              'Similar Product',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
          Container(
            height: 360.0,
            child: SimilarProducts(),
          ),
        ],
      ),
    );
  }
}

class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
  var similar_product_list = [
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
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: similar_product_list.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return SimilarSingleProduct(
          product_name: similar_product_list[index]['name'],
          product_pic: similar_product_list[index]['picture'],
          product_oldprice: similar_product_list[index]['old_price'],
          product_price: similar_product_list[index]['price'],
          product_brand: similar_product_list[index]['brand'],
          product_condition: similar_product_list[index]['condition'],
          product_description: similar_product_list[index]['description'],
        );
      },
    );
  }
}

class SimilarSingleProduct extends StatelessWidget {
  final product_name;
  final product_pic;
  final product_oldprice;
  final product_price;
  final product_brand;
  final product_description;
  final product_condition;

  SimilarSingleProduct(
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
