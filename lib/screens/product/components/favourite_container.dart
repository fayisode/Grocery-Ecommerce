import 'package:flutter/material.dart';

Container buildFavouriteContainer() {
  return Container(
    padding: EdgeInsets.zero,
    height: 35,
    width: 35,
    decoration: BoxDecoration(color: Colors.orange, shape: BoxShape.circle),
    child: Icon(
      Icons.favorite,
      color: Colors.white,
    ),
  );
}
