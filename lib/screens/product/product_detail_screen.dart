import 'package:flutter/material.dart';
import 'package:grocery_plus/providers/product.dart';
import 'package:provider/provider.dart';
import 'components/add_to_cart.dart';
import 'components/cart_counter.dart';
import 'components/color_and_sixe.dart';
import 'components/description_widget.dart';
import 'components/favourite_container.dart';
import 'components/padding_product_tile.dart';
import 'package:sizer/sizer.dart';

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
                        //height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(2.7.h),
                                topRight: Radius.circular(2.7.h))),
                        child: Padding(
                          padding: EdgeInsets.only(top: 14.0.h, left: 2.5.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              ColorAndSize(listproduct: listproduct),
                              descriptionWidget(listproduct),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  CartCounter(),
                                  Padding(
                                    padding: EdgeInsets.only(right: 5.0.w),
                                    child: buildFavouriteContainer(),
                                  )
                                ],
                              ),
                              AddToCart()
                            ],
                          ),
                        ),
                      ),
                      buildPaddingProductTile(context, listproduct, size)
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
