import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

ListTile buildListTile(BuildContext context) {
  return new ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: CircleAvatar(
        radius: 2.7.h,
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          Icons.location_on,
          color: Colors.white,
        ),
      ),
      title: new Text(
        "Your Location",
        style: GoogleFonts.lato(
            textStyle: TextStyle(
                color: Colors.black,
                fontSize: 8.0.sp,
                fontWeight: FontWeight.normal)),
      ),
      subtitle: new Text("32 Llanberis Close, Tonteg, CF35 IHR",
          //style: ,
          style: GoogleFonts.lato(
              textStyle:
                  TextStyle(fontSize: 9.0.sp, fontWeight: FontWeight.bold))),
      trailing: new IconButton(
        iconSize: 6.5.w,
        icon: new Icon(
          Icons.keyboard_arrow_right,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
      onTap: () {/* react to the tile being tapped */});
}
