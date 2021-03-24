import 'package:flutter/material.dart';
import '../models/offer_product.dart';

class TodaysOffer extends StatefulWidget {
  @override
  _TodaysOfferState createState() => _TodaysOfferState();
}

class _TodaysOfferState extends State<TodaysOffer> {
  final List<ProductOffer> offerproducts = [
    ProductOffer(
        id: "item1",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5),
    ProductOffer(
        id: "item1",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5),
    ProductOffer(
        id: "item1",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5),
    ProductOffer(
        id: "item1",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5),
    ProductOffer(
        id: "item1",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5),
    ProductOffer(
        id: "item1",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: offerproducts.length,
          padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(40.0, 10, 15, 10),
                  height: 180.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(100, 20, 20, 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(offerproducts[index].title,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600)),
                            Column(
                              children: <Widget>[
                                Text('\$${offerproducts[index].price}',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600)),
                                Text('per pax',
                                    style: TextStyle(color: Colors.grey)),
                              ],
                            )
                          ],
                        ),
                        Text(
                          offerproducts[index].description,
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(offerproducts[index].kg.toString() + " kg"),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: 120,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                            Icon(
                              Icons.favorite,
                              size: 35,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            );
          }),
    );
  }
}
