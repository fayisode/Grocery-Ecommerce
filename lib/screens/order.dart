import 'package:flutter/material.dart';
import 'package:grocery_plus/screens/history_screen.dart';
import 'package:grocery_plus/screens/ongoing_screen.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  List<Widget> _pages = [
    OngoingScreen(),
    HistoryScreen(),
  ];
  int _selectedPageIndex = 0;

  void _selectPages(int index) {
    setState(() {
      print(index);
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 20, left: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Orders",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              Container(
                height: 40,
                child: DefaultTabController(
                  length: 2,
                  child: TabBar(
                      labelColor: Colors.blue,
                      indicatorSize: TabBarIndicatorSize.label,
                      onTap: _selectPages,
                      unselectedLabelColor: Colors.black54,
                      indicator: MD2Indicator(
                          //it begins here
                          indicatorHeight: 3,
                          indicatorColor: Color(0xff1a73e8),
                          indicatorSize: MD2IndicatorSize
                              .full //3 different modes tiny-normal-full
                          ),
                      tabs: [
                        Tab(
                          child: Container(
                            child: Align(
                                alignment: Alignment.center,
                                child: Text("Ongoing")),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Align(
                                alignment: Alignment.center,
                                child: Text("History")),
                          ),
                        ),
                      ]),
                ),
              ),
              Divider(
                thickness: 1,
              ),
              Expanded(child: Container(child: _pages[_selectedPageIndex]))
            ],
          ),
        ),
      ),
    );
  }
}
