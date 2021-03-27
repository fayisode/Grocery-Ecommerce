import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Container buildContainer() {
  return new Container(
    height: 50,
    padding: EdgeInsets.all(10),
    child: Row(children: <Widget>[
      Icon(
        Icons.search,
        //color: Colors.black,
      ),
      Expanded(
        child: TextFormField(
          decoration: InputDecoration(
              labelStyle: GoogleFonts.lato(),
              labelText: '  Search Anything',
              border: InputBorder.none),
        ),
      )
    ]),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Colors.white),
  );
}
