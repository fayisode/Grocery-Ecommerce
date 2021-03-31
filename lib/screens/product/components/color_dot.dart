import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({Key key, this.color, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2.5.w, bottom: 1.4.h),
      padding: EdgeInsets.all(2.5),
      height: 9.3.h,
      width: 17.5.w,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border.all(color: isSelected ? color : Colors.transparent)),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.rectangle),
      ),
    );
  }
}
