import 'package:flutter/material.dart';
import 'package:grocery_plus/models/offer_product.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    Key key,
    @required this.offerproducts,
  }) : super(key: key);

  final List<ProductOffer> offerproducts;

  @override
  Widget build(BuildContext context) {
    // final productsData = Provider.of<Product>(context);
    // final offerproducts = productsData.items;
    return ListView.builder(
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
                          Container(
                            width: 120,
                            child: Text(offerproducts[index].title,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600)),
                          ),
                          Column(
                            children: <Widget>[
                              Text('\$${offerproducts[index].price}',
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600)),
                              Text('per pax',
                                  style: TextStyle(color: Colors.grey)),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 160,
                        child: Text(
                          offerproducts[index].description,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.lightGreen,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(offerproducts[index].kg.toString() + " kg"),
                      SizedBox(
                        height: 9,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: 120,
                            height: 35,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10)),
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
              ),
              Positioned(
                left: 20.0,
                top: 20.0,
                bottom: 20.0,
                child: Hero(
                  tag: offerproducts[index].imageUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      width: 110,
                      image: AssetImage(offerproducts[index].imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          );
        });
  }
}
