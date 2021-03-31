import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../constrint.dart';

// ignore: must_be_immutable
class ProfileMenu extends StatelessWidget {
  ProfileMenu(
      {Key key,
      @required this.texts,
      @required this.icon,
      @required this.press})
      : super(key: key);
  final String texts;
  IconData icon;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding * 2, vertical: kDefaultPadding),
      child: TextButton(
          style: TextButton.styleFrom(
              elevation: 5,
              backgroundColor: Colors.white,
              padding: EdgeInsets.all(kDefaultPadding * 1.3),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(kDefaultPadding * 1.3))),
          onPressed: () {},
          child: Row(
            children: [
              Icon(
                icon,
                size: 32,
              ),
              SizedBox(
                width: kDefaultPadding * 2,
              ),
              Expanded(
                child: Text(
                  texts,
                  style: fonts.copyWith(
                      fontSize: (18 / textSizer).sp, color: Colors.grey),
                ),
              ),
              Icon(Icons.arrow_forward_ios)
            ],
          )),
    );
  }
}
