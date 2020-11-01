import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var products_on_cart = [
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "price": 85.0,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    {
      "name": "Black Dress",
      "picture": "images/products/dress2.jpeg",
      "price": 85.0,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products_on_cart.length,
      itemBuilder: (context, index) {
        return SingleCartProduct(
          productName: products_on_cart[index]["name"],
          productPic: products_on_cart[index]["picture"],
          productPrice: products_on_cart[index]["price"],
          productSize: products_on_cart[index]["size"],
          productColor: products_on_cart[index]["color"],
          productQty: products_on_cart[index]["quantity"],
        );
      },
    );
  }
}

class SingleCartProduct extends StatelessWidget {
  final productName;
  final productPic;
  final productPrice;
  final productSize;
  final productColor;
  final productQty;

  SingleCartProduct(
      {this.productName,
      this.productPic,
      this.productPrice,
      this.productColor,
      this.productQty,
      this.productSize});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
          leading: Image.asset(
            productPic,
          ),
          title: Text(
            productName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          subtitle: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Size: $productSize",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Color: $productColor",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "\$$productPrice",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          trailing: InkWell(
            child: Text(
              "$productQty",
            ),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: new Text(
                      'Quantity',
                    ),
                    content: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 150.0,
                        child: Column(
                          children: [
                            IconButton(
                              icon: Icon(Icons.arrow_drop_up),
                              onPressed: (){},
                            ),
                            Text(
                              "$productQty",
                            ),
                            IconButton(
                              icon: Icon(Icons.arrow_drop_down),
                              onPressed: (){},
                            ),
                          ],
                        ),
                      ),
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
          ),
        ),
    );
  }
}
