import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_plus/constrint.dart';
import 'package:sizer/sizer.dart';

import 'listview_row1.dart';
import 'listview_row2.dart';

Container buildMainContainer(int index, offerproducts) {
  //double selectedValW = 1.0.w;
  double selectedValH = 1.0.h;
  return Container(
    margin: EdgeInsets.fromLTRB(10.0.w, 1.3.h, 3.75.w, 1.2.h),
    height: selectedValH >= 7.6 ? 30.0.h : 180, //180
    width: double.infinity,
    decoration: BoxDecoration(
        boxShadow: [kDefaultShadow],
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0.w)),
    child: Padding(
      padding: EdgeInsets.fromLTRB(25.0.w, 2.7.h, 5.0.w, 2.6.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          buildRow(index, offerproducts),
          SizedBox(
            height: 0.65.h,
          ),
          Container(
            width: 40.0.w,
            child: Text(offerproducts[index].description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 9.2.sp,
                  ),
                )),
          ),
          SizedBox(
            height: 0.6.h,
          ),
          Text(offerproducts[index].kg.toString() + " kg",
              style: GoogleFonts.lato()),
          SizedBox(
            height: 0.65.h,
          ),
          buildRow2()
        ],
      ),
    ),
  );
}
