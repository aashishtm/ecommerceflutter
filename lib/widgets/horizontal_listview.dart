import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            'images/cats/tshirt.png',
            'T-Shirts',
          ),
          Category(
            'images/cats/dress.png',
            'Dress',
          ),
          Category(
            'images/cats/formal.png',
            'Formal',
          ),
          Category(
            'images/cats/informal.png',
            'Informal',
          ),
          Category(
            'images/cats/jeans.png',
            'Jeans',
          ),
          Category(
            'images/cats/shoe.png',
            'Shoe',
          ),
          Category(
            'images/cats/accessories.png',
            'Accessory',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category(this.image_location, this.image_caption);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(image_location),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                image_caption,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
