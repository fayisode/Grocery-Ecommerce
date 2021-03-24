import 'package:flutter/material.dart';
import 'package:grocery_plus/widgets/todays_offer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

//
class _HomePageState extends State<HomePage> {
  List<Widget> _pages = [TodaysOffer(), TodaysOffer()];
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
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 120, top: 30),
          child: Text(
            "What would your like to buy?",
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 40,
          child: DefaultTabController(
            length: 2,
            child: TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                onTap: _selectPage,
                unselectedLabelColor: Colors.black54,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue),
                tabs: [
                  Tab(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blue, width: 1)),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text("Today's Offer")),
                    ),
                  ),
                  Tab(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blue, width: 1)),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text("Favourites")),
                    ),
                  ),
                ]),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Expanded(child: Container(child: _pages.first))
      ],
    )));
  }
}

// Color getColor(int selector) {
//   if (selector == 0) {
//     return Colors.blue;
//   } else {
//     return Colors.lightGreen;
//   }
// }
