import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../constrint.dart';

class ProfileText extends StatelessWidget {
  const ProfileText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: kDefaultPadding * 2, left: kDefaultPadding * 2),
          child: Text(
            "Profile",
            style: fonts.copyWith(fontSize: (30 / textSizer).sp),
          ),
        ),
      ],
    );
  }
}
