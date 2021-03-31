import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

Container buildContainer() {
  return new Container(
    height: 6.8.h,
    padding: EdgeInsets.all(2.6.w),
    child: Row(children: <Widget>[
      Icon(
        Icons.search,
        color: Colors.black38,
        size: 3.2.h,
        //color: Colors.black,
      ),
      Expanded(
        child: TextFormField(
          decoration: InputDecoration(
              labelStyle: GoogleFonts.lato(
                  textStyle:
                      TextStyle(fontSize: 18, fontStyle: FontStyle.normal)),
              labelText: '  Search Anything',
              border: InputBorder.none),
        ),
      )
    ]),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.5.w), color: Colors.white),
  );
}
