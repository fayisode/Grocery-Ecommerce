import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 4.0.h, right: 5.0.h),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 5.0.h),
            height: 6.8.h,
            width: 15.0.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.5.w),
                border: Border.all(color: Colors.blue)),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.blue,
                )),
          ),
          Expanded(
            child: SizedBox(
              height: 6.8.h,
              child: TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.5.w)),
                    backgroundColor: Colors.blue),
                onPressed: () {},
                child: Text("Buy Now".toUpperCase(),
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontSize: 13.0.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
