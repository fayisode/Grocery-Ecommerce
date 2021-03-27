import 'package:flutter/material.dart';
import 'package:grocery_plus/models/offer_product.dart';

Padding descriptionWidget(List<ProductOffer> listproduct) {
  return Padding(
    padding: EdgeInsets.only(right: 20, top: 10, bottom: 20),
    child: Text(
      listproduct[0].description,
      softWrap: true,
      maxLines: 4,
      style: TextStyle(height: 1.5),
    ),
  );
}
