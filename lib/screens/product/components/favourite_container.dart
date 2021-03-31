import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Container buildFavouriteContainer() {
  return Container(
    padding: EdgeInsets.zero,
    height: 4.6.h,
    width: 8.75.w,
    decoration: BoxDecoration(color: Colors.orange, shape: BoxShape.circle),
    child: Icon(
      Icons.favorite,
      color: Colors.white,
    ),
  );
}
