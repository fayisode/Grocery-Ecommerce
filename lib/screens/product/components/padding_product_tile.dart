import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_plus/models/offer_product.dart';
import 'package:sizer/sizer.dart';

Padding buildPaddingProductTile(
    BuildContext context, List<ProductOffer> listproduct, Size size) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 1.3.h, vertical: 5.0.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  listproduct[0].category,
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(color: Colors.white)),
                ),
                Text(
                  listproduct[0].title,
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 17.8.sp,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ],
        ),
        Row(children: <Widget>[
          RichText(
              text: TextSpan(children: [
            TextSpan(text: "Price\n", style: GoogleFonts.lato()),
            TextSpan(
                text: '\$${listproduct[0].price}',
                style: GoogleFonts.lato(
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 17.8.sp,
                        fontWeight: FontWeight.bold))),
          ])),
          Container(
            margin: EdgeInsets.only(
                left: size.height * 0.07, top: size.height * 0.06),
            height: size.height * 0.3,
            width: size.height * 0.3,
            child: Hero(
              tag: listproduct[0].imageUrl,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  image: AssetImage(listproduct[0].imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ]),
      ],
    ),
  );
}
