import 'package:flutter/material.dart';

import 'listview_row1.dart';
import 'listview_row2.dart';

Container buildMainContainer(int index, offerproducts) {
  return Container(
    margin: EdgeInsets.fromLTRB(40.0, 10, 15, 10),
    height: 180.0,
    width: double.infinity,
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(20)),
    child: Padding(
      padding: EdgeInsets.fromLTRB(100, 20, 20, 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          buildRow(index, offerproducts),
          SizedBox(
            height: 5,
          ),
          Container(
            width: 160,
            child: Text(
              offerproducts[index].description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(offerproducts[index].kg.toString() + " kg"),
          SizedBox(
            height: 9,
          ),
          buildRow2()
        ],
      ),
    ),
  );
}
