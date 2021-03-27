import 'package:flutter/material.dart';
import 'package:grocery_plus/models/offer_product.dart';

Padding buildPaddingProductTile(
    BuildContext context, List<ProductOffer> listproduct, Size size) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  listproduct[0].category,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  listproduct[0].title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ],
        ),
        Row(children: <Widget>[
          RichText(
              text: TextSpan(children: [
            TextSpan(text: "Price\n"),
            TextSpan(
                text: '\$${listproduct[0].price}',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
          ])),
          Container(
            margin: EdgeInsets.only(
                left: size.height * 0.07, top: size.height * 0.06),
            height: size.height * 0.3,
            width: size.height * 0.3,
            child: Hero(
              tag: listproduct[0].imageUrl,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  image: AssetImage(listproduct[0].imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ]),
      ],
    ),
  );
}
