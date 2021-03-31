import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

Padding buildPadding() {
  return Padding(
    padding: EdgeInsets.only(top: 1.3.h, bottom: 2.6.h, left: 2.4.w),
    child: Align(
      alignment: Alignment.topLeft,
      child: Text(
        "Orders",
        style: GoogleFonts.lato(
            textStyle:
                TextStyle(fontSize: 19.0.sp, fontWeight: FontWeight.w400)),
      ),
    ),
  );
}
