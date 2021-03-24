import 'package:flutter/material.dart';
import 'package:grocery_plus/widgets/favourites.dart';
import 'package:grocery_plus/widgets/todays_offer.dart';

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
          height: 5,
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
          height: 5,
        ),
        Expanded(child: Container(child: _pages[_selectedPageIndex]))
      ],
    )));
  }

  Padding buildPadding(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(12.0),
      child: new Column(
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Text(
                "Grocery Plus",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              new Icon(Icons.notifications_none)
            ],
          ),
          new ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: CircleAvatar(
                backgroundColor: Theme.of(context).primaryColor,
                child: Icon(
                  Icons.location_on,
                  color: Colors.white,
                ),
              ),
              title: new Text(
                "Your Location",
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.normal),
              ),
              subtitle: new Text(
                "32 Llanberis Close, Tonteg, CF35 IHR",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: new IconButton(
                icon: new Icon(Icons.keyboard_arrow_right),
                onPressed: () => print("Icon is working"),
              ),
              onTap: () {/* react to the tile being tapped */}),
          new Container(
            height: 50,
            padding: EdgeInsets.all(10),
            child: Row(children: <Widget>[
              Icon(
                Icons.search,
                //color: Colors.black,
              ),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: '  Search Anything', border: InputBorder.none),
                ),
              )
            ]),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
          ),
        ],
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
