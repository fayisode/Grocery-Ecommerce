import 'package:flutter/material.dart';
import 'package:grocery_plus/screens/order/components/history_screen.dart';
import 'package:grocery_plus/screens/order/components/ongoing_screen.dart';

import 'components/build_container.dart';
import 'components/build_padding.dart';

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
              buildPadding(),
              buildContainer(_selectPages),
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
