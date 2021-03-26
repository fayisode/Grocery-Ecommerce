import 'package:flutter/material.dart';

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
        style: TextStyle(
            color: Colors.lightGreen,
            fontSize: 11,
            fontWeight: FontWeight.normal),
      ),
      subtitle: new Text(
        "32 Llanberis Close, Tonteg, CF35 IHR",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      trailing: new IconButton(
        icon: new Icon(
          Icons.keyboard_arrow_right,
          color: Colors.lightGreen,
        ),
        onPressed: () => print("Icon is working"),
      ),
      onTap: () {/* react to the tile being tapped */});
}
