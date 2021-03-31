import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlinedButton(
            icon: Icons.remove,
            press: () {
              setState(() {
                if (numOfItems == 1) {
                  return;
                } else {
                  numOfItems--;
                }
              });
            }),
        Padding(
          padding: EdgeInsets.all(1.1.h),
          child: Text(
            numOfItems.toString().padLeft(2, "0"),
            style: GoogleFonts.lato(
                textStyle:
                    TextStyle(fontSize: 12.1.sp, fontWeight: FontWeight.bold)),
          ),
        ),
        buildOutlinedButton(
            icon: Icons.add,
            press: () {
              setState(() {
                numOfItems++;
              });
            }),
      ],
    );
  }

  SizedBox buildOutlinedButton({IconData icon, Function press}) {
    return SizedBox(
      width: 10.0.w,
      height: 4.3.h,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.6.h)),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
