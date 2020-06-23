import 'package:flutter/material.dart';
import 'package:ui/model/model.dart';

class AddToCart extends StatefulWidget {
  @override
  _AddToCartState createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  static List<Model> modelList = [
    Model(
        price: 4.99,
        name: 'Green Hat',
        brand: 'Houston',
        imageAsset: 'assets/hatgreen.jpg'),
    Model(
        price: 5.99,
        name: 'Grey Hat',
        brand: 'Houston',
        imageAsset: 'assets/hatgrey.jpg'),
    Model(
        price: 3.99,
        name: 'Black Hat',
        brand: 'Houston',
        imageAsset: 'assets/hatblack.jpg'),
    Model(
        price: 7.99,
        name: 'White Hat',
        brand: 'Houston',
        imageAsset: 'assets/hat.jpg'),
    Model(
        price: 2.99,
        name: 'Backpack',
        brand: 'Rounie',
        imageAsset: 'assets/backpack.jpg'),
    Model(
        price: 7.99,
        name: 'Hunter',
        brand: 'UCB',
        imageAsset: 'assets/sneaker.jpg'),
    Model(
        price: 15.99,
        name: 'Blue Jacket',
        brand: 'Rynox',
        imageAsset: 'assets/jacketblue.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView.builder(
                    itemCount: modelList.length,
                    itemBuilder: (context, index) {
                      return _listItem(index);
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _listItem(index) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: Colors.white,
      child: Container(
        height: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Image.asset(
                    modelList[index].imageAsset,
                    fit: BoxFit.cover,
                    width: 80,
                    height: 80,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      modelList[index].brand,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      modelList[index].name,
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '\$${modelList[index].price.toString()}',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18),
              child: Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.shopping_cart,
                  size: 30.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
