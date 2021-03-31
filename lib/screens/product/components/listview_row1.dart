import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

Row buildRow(int index, offerproducts) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        width: 30.0.w,
        child: Text(offerproducts[index].title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.lato(
                textStyle:
                    TextStyle(fontSize: 13.8.sp, fontWeight: FontWeight.w600))),
      ),
      Column(
        children: <Widget>[
          Text('\$${offerproducts[index].price}',
              style: GoogleFonts.lato(
                  textStyle: TextStyle(
                      color: Colors.orange,
                      fontSize: 16.7.sp,
                      fontWeight: FontWeight.w600))),
          Text('per pax',
              style:
                  GoogleFonts.lato(textStyle: TextStyle(color: Colors.grey))),
        ],
      )
    ],
  );
}
