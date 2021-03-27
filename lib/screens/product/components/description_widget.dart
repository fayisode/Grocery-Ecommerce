import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_plus/models/offer_product.dart';
import 'package:auto_size_text/auto_size_text.dart';

Padding descriptionWidget(List<ProductOffer> listproduct) {
  return Padding(
    padding: EdgeInsets.only(right: 20, top: 10, bottom: 20),
    child: AutoSizeText(listproduct[0].description,
        softWrap: true,
        maxLines: 4,
        style: GoogleFonts.lato(textStyle: TextStyle(height: 1.5))),
  );
}
