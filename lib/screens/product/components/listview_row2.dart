import 'package:flutter/material.dart';

import 'favourite_container.dart';

Row buildRow2() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Container(
        width: 120,
        height: 35,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                " Add to Bag",
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.add,
                color: Colors.white,
                size: 20,
              )
            ],
          ),
        ),
      ),
      // Icon(
      //   Icons.favorite,
      //   size: 35,
      // ),
      buildFavouriteContainer()
    ],
  );
}
