import 'package:flutter/foundation.dart';

class ProductOffer {
  String id;
  String title;
  double price;
  double kg;
  String description;
  String imageUrl;
  String category;

  ProductOffer(
      {@required this.id,
      @required this.imageUrl,
      @required this.title,
      @required this.description,
      @required this.kg,
      @required this.price,
      @required this.category});
}
