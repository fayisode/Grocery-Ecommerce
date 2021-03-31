import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_plus/models/offer_product.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:sizer/sizer.dart';

Padding descriptionWidget(List<ProductOffer> listproduct) {
  final selectedValH = 1.0.h;
  return Padding(
    padding: EdgeInsets.only(right: 5.0.w, top: 1.3.h, bottom: 2.6.h),
    child: AutoSizeText(listproduct[0].description,
        softWrap: true,
        maxLines: selectedValH >= 7.6 ? 3 : 4,
        style: GoogleFonts.lato(
            textStyle: TextStyle(
                height: 0.25.h,
                fontWeight: FontWeight.w400,
                fontSize: selectedValH >= 7.6 ? 6.2.sp : 8))),
  );
}
