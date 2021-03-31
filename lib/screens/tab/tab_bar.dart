import 'package:flutter/material.dart';
import 'package:grocery_plus/screens/profile/prodile_screen.dart';
import 'package:grocery_plus/screens/tab/components/ButtonNavigator.dart';
import '../home/home_page.dart';
import '../category/catergory_screen.dart';
import '../order/order.dart';

class TabBars extends StatefulWidget {
  @override
  _TabBarsState createState() => _TabBarsState();
}

class _TabBarsState extends State<TabBars> {
  List<Widget> _pages = [
    HomePage(),
    CategoryScreen(),
    OrderScreen(),
    OrderScreen(),
    ProfileScreen()
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex],
      bottomNavigationBar:
          buildBottomNavigationBar(context, _selectPage, _selectedPageIndex),
    );
  }
}
