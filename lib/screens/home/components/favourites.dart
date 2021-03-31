import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Favourites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (true) {
      return Center(
        child: Text(
          'You have no favourites yet-start adding some',
          style: GoogleFonts.lato(
              textStyle:
                  TextStyle(fontSize: 11.0.sp, fontStyle: FontStyle.normal)),
        ),
      );
    }
  }
}
