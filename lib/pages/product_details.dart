import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_pic;
  final product_detail_price;
  final product_detail_oldprice;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_pic,
    this.product_detail_oldprice,
    this.product_detail_price,
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
                  onLongPress: () {},
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
                  onLongPress: () {},
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
                  onLongPress: () {},
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
          )
        ],
      ),
    );
  }
}
