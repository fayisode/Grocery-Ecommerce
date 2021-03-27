import 'package:flutter/material.dart';

Row buildRow(int index, offerproducts) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        width: 120,
        child: Text(offerproducts[index].title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
      ),
      Column(
        children: <Widget>[
          Text('\$${offerproducts[index].price}',
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 22,
                  fontWeight: FontWeight.w600)),
          Text('per pax', style: TextStyle(color: Colors.grey)),
        ],
      )
    ],
  );
}
