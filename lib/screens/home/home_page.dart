import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_plus/screens/home/components/builContainer.dart';
import 'package:grocery_plus/screens/home/components/buildLastTile.dart';
import 'package:grocery_plus/screens/home/components/favourites.dart';
import 'package:grocery_plus/screens/home/todays_offer.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

//
class _HomePageState extends State<HomePage> {
  List<Widget> _pages = [TodaysOffer(), Favourites()];
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: SafeArea(
            child: Column(
      //padding: EdgeInsets.symmetric(vertical: 30),
      children: <Widget>[
        buildPadding(context),
        SizedBox(
          height: 0.65.h,
        ),
        Container(
          height: 5.3.h,
          child: buildDefaultTabController(),
        ),
        SizedBox(
          height: 0.65.h,
        ),
        Expanded(child: Container(child: _pages[_selectedPageIndex]))
      ],
    )));
  }

  DefaultTabController buildDefaultTabController() {
    return DefaultTabController(
      length: 2,
      child: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          onTap: _selectPage,
          unselectedLabelColor: Colors.black54,
          indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(1.3.h), color: Colors.blue),
          tabs: [
            Tab(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1.3.h),
                    border: Border.all(color: Colors.blue, width: 1)),
                child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Today's Offer",
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              fontSize: 11.0.sp, fontStyle: FontStyle.normal)),
                    )),
              ),
            ),
            Tab(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1.3.h),
                    border: Border.all(color: Colors.blue, width: 1)),
                child: Align(
                    alignment: Alignment.center,
                    child: Text("Favourites",
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                fontSize: 11.0.sp,
                                fontStyle: FontStyle.normal)))),
              ),
            ),
          ]),
    );
  }

  Padding buildPadding(BuildContext context) {
    var children2 = <Widget>[
      new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Text(
            "Grocery Plus",
            style: GoogleFonts.lato(
                textStyle:
                    TextStyle(fontSize: 18.0.sp, fontWeight: FontWeight.w500)),
          ),
          new Icon(Icons.notifications_none)
        ],
      ),
      SizedBox(
        height: 0.85.h,
      ),
      buildListTile(context),
      SizedBox(
        height: 0.85.h,
      ),
      buildContainer(),
    ];
    return new Padding(
      padding: EdgeInsets.all(1.6.h),
      child: new Column(
        children: children2,
      ),
    );
  }
}

// Color getColor(int selector) {
//   if (selector == 0) {
//     return Colors.blue;
//   } else {
//     return Colors.lightGreen;
//   }
// }
