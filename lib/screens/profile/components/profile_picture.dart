import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../constrint.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (115 / heightSizer).h,
      width: (115 / widthSizer).w,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage("https://i.imgur.com/zL4Krbz.jpg"),
          ),
          Positioned(
            top: -5,
            left: 0,
            child: SizedBox(
              height: (45 / heightSizer).h,
              width: (45 / widthSizer).w,
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color(0XFFF5F6F9),
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(kDefaultPadding * 2))),
                onPressed: () {},
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/camera_icon.png",
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
