import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:grocery_plus/constrint.dart';
import './profile_menu.dart';
import './profile_picture.dart';
import 'profile_text.dart';

class BodyObject extends StatelessWidget {
  const BodyObject({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ProfileText(),
        SizedBox(
          height: kDefaultPadding * 2,
        ),
        ProfilePicture(),
        SizedBox(
          height: kDefaultPadding * 3,
        ),
        ProfileMenu(
          texts: "My Account",
          icon: FontAwesome.user,
          press: () {},
        ),
        ProfileMenu(
          texts: "Notifications",
          icon: Icons.notifications_none,
          press: () {},
        ),
        ProfileMenu(
          texts: "Settings",
          icon: Icons.settings,
          press: () {},
        ),
        ProfileMenu(
          texts: "Help Center",
          icon: Icons.help_center,
          press: () {},
        ),
        ProfileMenu(
          texts: "Log Out",
          icon: Icons.logout,
          press: () {},
        ),
      ],
    );
  }
}
