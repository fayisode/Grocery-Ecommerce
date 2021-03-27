import 'package:flutter/material.dart';

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({Key key, this.color, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10, bottom: 10),
      padding: EdgeInsets.all(2.5),
      height: 70,
      width: 70,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border.all(color: isSelected ? color : Colors.transparent)),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.rectangle),
      ),
    );
  }
}
