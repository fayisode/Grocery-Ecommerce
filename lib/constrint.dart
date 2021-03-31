import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

const kTextColor = Color(0xFF707070);
const kTextLightColor = Color(0xFF555555);
const backgroudColor = Color(0xFFD8ECF1);
final heightSizer = 1.0.h;
final widthSizer = 1.0.w;
final kDefaultPadding = heightSizer + 3;
final textSizer = 1.0.sp;
const iconColor = Color(0xFF0700B1);
final kDefaultShadow = BoxShadow(
  offset: Offset(0, 50),
  blurRadius: 50,
  color: backgroudColor.withOpacity(0.15),
);
//Color(0xFF0700B1)
final kDefaultCardShadow = BoxShadow(
  offset: Offset(0, 20),
  blurRadius: 50,
  color: Colors.black.withOpacity(0.1),
);

// TextField dedign
final kDefaultInputDecorationTheme = InputDecorationTheme(
  border: kDefaultOutlineInputBorder,
  enabledBorder: kDefaultOutlineInputBorder,
  focusedBorder: kDefaultOutlineInputBorder,
);

final kDefaultOutlineInputBorder = OutlineInputBorder(
  // Maybe flutter team need to fix it on web
  // borderRadius: BorderRadius.circular(50),
  borderSide: BorderSide(
    color: Color(0xFFCEE4FD),
  ),
);

final fonts =
    GoogleFonts.lato(textStyle: TextStyle(fontStyle: FontStyle.normal));
