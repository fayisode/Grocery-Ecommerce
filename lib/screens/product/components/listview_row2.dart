import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import 'favourite_container.dart';

Row buildRow2() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Container(
        width: 27.5.w,
        height: 4.6.h,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(2.5.w)),
        child: Padding(
          padding: EdgeInsets.all(2.0.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                " Add to Bag",
                style:
                    GoogleFonts.lato(textStyle: TextStyle(color: Colors.white)),
              ),
              Icon(
                Icons.add,
                color: Colors.white,
                size: 14.2.sp,
              )
            ],
          ),
        ),
      ),
      // Icon(
      //   Icons.favorite,
      //   size: 35,
      // ),
      buildFavouriteContainer()
    ],
  );
}
