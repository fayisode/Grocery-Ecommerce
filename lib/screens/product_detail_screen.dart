import 'package:flutter/material.dart';
import 'package:grocery_plus/providers/product.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatefulWidget {
  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
  static const routeNames = '/product-detail-screen';
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final routeArfs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final productId = routeArfs['id'];
    final productTitle = routeArfs['title'];
    final listproduct = Provider.of<Product>(context)
        .items
        .where((element) => element.id == productId)
        .toList();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                  height: size.height,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: size.height * 0.35),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                        child: Column(
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
                                    left: size.height * 0.07,
                                    top: size.height * 0.06),
                                height: size.height * 0.25,
                                width: size.height * 0.3,
                                child: Hero(
                                  tag: listproduct[0].imageUrl,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image(
                                      image:
                                          AssetImage(listproduct[0].imageUrl),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              )
                            ]),
                          ],
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
