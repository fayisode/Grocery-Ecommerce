import 'package:flutter/material.dart';
import 'package:grocery_plus/models/offer_product.dart';
import 'package:grocery_plus/screens/product/product_detail_screen.dart';
import 'components/list_view_container.dart';
import 'package:sizer/sizer.dart';

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
        padding: EdgeInsets.only(top: 1.3.h, bottom: 2.0.h),
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
      left: 5.0.w,
      top: 5.0.w,
      bottom: 2.6.h,
      child: InkWell(
        onTap: () => selectCategory(context, index),
        child: Hero(
          tag: offerproducts[index].imageUrl + offerproducts[index].id,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(2.6.h),
            child: Image(
              width: 28.0.w,
              image: AssetImage(offerproducts[index].imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
