import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Padding buildPadding() {
  return Padding(
    padding: const EdgeInsets.only(top: 10, bottom: 20, left: 10),
    child: Align(
      alignment: Alignment.topLeft,
      child: Text(
        "Orders",
        style: GoogleFonts.lato(
            textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.w400)),
      ),
    ),
  );
}
