import 'package:flutter/material.dart';
import './home_page.dart';
import './catergory_screen.dart';

class TabBars extends StatefulWidget {
  @override
  _TabBarsState createState() => _TabBarsState();
}

class _TabBarsState extends State<TabBars> {
  List<Widget> _pages = [HomePage(), CategoryScreen(), HomePage(), HomePage()];

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
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        onTap: _selectPage,
        unselectedItemColor: Theme.of(context).buttonColor,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        selectedItemColor: Theme.of(context).primaryColor,
        currentIndex: _selectedPageIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            //backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.home),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            //backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            //backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.business_center),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            //backgroundColor: Theme.of(context).primaryColor,
            icon: CircleAvatar(
              radius: 12,
              backgroundImage: NetworkImage("https://i.imgur.com/zL4Krbz.jpg"),
            ),
            title: SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
