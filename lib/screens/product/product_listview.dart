import 'package:flutter/material.dart';
import 'package:grocery_plus/models/offer_product.dart';
import 'package:grocery_plus/screens/product/product_detail_screen.dart';
import 'components/list_view_container.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    Key key,
    @required this.offerproducts,
  }) : super(key: key);

  final List<ProductOffer> offerproducts;
  void selectCategory(BuildContext ctx, indexValue) {
    Navigator.of(ctx).pushNamed(ProductDetailScreen.routeNames, arguments: {
      'id': offerproducts[indexValue].id,
      'title': offerproducts[indexValue].title
    });
  }

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
              buildMainContainer(index, offerproducts),
              buildPositioned(context, index)
            ],
          );
        });
  }

  Positioned buildPositioned(BuildContext context, int index) {
    return Positioned(
      left: 20.0,
      top: 20.0,
      bottom: 20.0,
      child: InkWell(
        onTap: () => selectCategory(context, index),
        child: Hero(
          tag: offerproducts[index].imageUrl + offerproducts[index].id,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              width: 110,
              image: AssetImage(offerproducts[index].imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
