import 'package:flutter/material.dart';
import 'package:grocery_plus/models/offer_product.dart';

import 'color_dot.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key key,
    @required this.listproduct,
  }) : super(key: key);

  final List<ProductOffer> listproduct;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text("Color"),
              ),
              Row(
                children: <Widget>[
                  ColorDot(
                    color: Color(0XFF356C95),
                    isSelected: true,
                  ),
                  ColorDot(color: Color(0XFFF8C078)),
                  ColorDot(color: Color(0XFFA29B9B)),
                ],
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(right: 30, top: 15),
          child: RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "Size\n",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                )),
            TextSpan(
                text: '${listproduct[0].kg} kg',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400)),
          ])),
        ),
      ],
    );
  }
}
