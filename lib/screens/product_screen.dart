import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  static const routeName = '/product-screen';
  @override
  Widget build(BuildContext context) {
    final routeArfs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final productId = routeArfs['id'];
    final productTitle = routeArfs['title'];
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          productTitle,
          style: TextStyle(color: Colors.black),
        ),
      ),
      //body: Text("Product Screen"),
    );
  }
}
