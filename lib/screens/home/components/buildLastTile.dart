import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ListTile buildListTile(BuildContext context) {
  return new ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: CircleAvatar(
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
                fontSize: 11,
                fontWeight: FontWeight.normal)),
      ),
      subtitle: new Text("32 Llanberis Close, Tonteg, CF35 IHR",
          //style: ,
          style: GoogleFonts.lato(
              textStyle: TextStyle(fontWeight: FontWeight.bold))),
      trailing: new IconButton(
        icon: new Icon(
          Icons.keyboard_arrow_right,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
      onTap: () {/* react to the tile being tapped */});
}
