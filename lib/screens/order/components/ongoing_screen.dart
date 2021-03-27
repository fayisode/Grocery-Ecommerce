import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OngoingScreen extends StatefulWidget {
  @override
  _OngoingScreenState createState() => _OngoingScreenState();
}

class _OngoingScreenState extends State<OngoingScreen> {
  @override
  Widget build(BuildContext context) {
    if (true) {
      return Center(
        child: Text(
          'You have no favourites yet-start adding some',
          style: GoogleFonts.lato(),
        ),
      );
    }
  }
}
