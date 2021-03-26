import 'package:flutter/material.dart';

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
              labelText: '  Search Anything', border: InputBorder.none),
        ),
      )
    ]),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Colors.white),
  );
}
