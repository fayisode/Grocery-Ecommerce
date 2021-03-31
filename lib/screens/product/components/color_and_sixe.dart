import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_plus/models/offer_product.dart';
import 'package:sizer/sizer.dart';

import 'color_dot.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key key,
    @required this.listproduct,
  }) : super(key: key);

  final List<ProductOffer> listproduct;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 1.3.h, bottom: 1.3.h),
                child: Text(
                  "Color",
                  style: GoogleFonts.lato(),
                ),
              ),
              Row(
                children: <Widget>[
                  ColorDot(
                    color: Color(0XFF356C95),
                    isSelected: true,
                  ),
                  ColorDot(color: Color(0XFFF8C078)),
                  ColorDot(color: Color(0XFFA29B9B)),
                ],
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(right: 7.5.w, top: 2.0.h),
          child: RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "Size\n",
                style: GoogleFonts.lato(
                    textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0.sp,
                ))),
            TextSpan(
                text: '${listproduct[0].kg} kg',
                style: GoogleFonts.lato(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0.sp,
                        fontWeight: FontWeight.w400))),
          ])),
        ),
      ],
    );
  }
}
