import 'package:flutter/material.dart';
import 'package:grocery_plus/screens/product/product_listview.dart';
import 'package:grocery_plus/providers/product.dart';
import 'package:provider/provider.dart';

class TodaysOffer extends StatefulWidget {
  @override
  _TodaysOfferState createState() => _TodaysOfferState();
}

class _TodaysOfferState extends State<TodaysOffer> {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Product>(context);
    final offerproduct = productsData.items;
    return Scaffold(
      body: ProductList(offerproducts: offerproduct),
    );
  }
}
