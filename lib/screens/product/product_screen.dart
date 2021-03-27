import 'package:flutter/material.dart';
import 'package:grocery_plus/providers/product.dart';
import 'package:grocery_plus/screens/home/components/builContainer.dart';
import 'package:grocery_plus/screens/product/product_listview.dart';
import 'package:provider/provider.dart';

class ProductScreen extends StatelessWidget {
  static const routeName = '/product-screen';
  @override
  Widget build(BuildContext context) {
    final routeArfs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final productId = routeArfs['id'];
    final productTitle = routeArfs['title'];
    final productList = Provider.of<Product>(context)
        .items
        .where((element) => element.category == productTitle)
        .toList();

    return Scaffold(
        appBar: AppBar(
          title: Text(productTitle),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                right: 14,
                left: 14,
              ),
              child: buildContainer(),
            ),
            Expanded(child: ProductList(offerproducts: productList)),
          ],
        )
        //body: Text("Product Screen"),
        );
  }
}
