import 'package:flutter/material.dart';

Padding buildPadding() {
  return Padding(
    padding: const EdgeInsets.only(top: 10, bottom: 20, left: 10),
    child: Align(
      alignment: Alignment.topLeft,
      child: Text(
        "Orders",
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
      ),
    ),
  );
}
