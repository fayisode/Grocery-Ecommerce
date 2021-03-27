import 'package:flutter/material.dart';

BottomNavigationBar buildBottomNavigationBar(
    BuildContext context, _selectPage, _selectedPageIndex) {
  return BottomNavigationBar(
    //elevation: 5,
    showSelectedLabels: false,
    onTap: _selectPage,
    unselectedItemColor: Theme.of(context).buttonColor,
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    selectedItemColor: Theme.of(context).primaryColor,
    unselectedFontSize: 4,
    selectedFontSize: 4,
    currentIndex: _selectedPageIndex,
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        //backgroundColor: Theme.of(context).primaryColor,
        icon: Icon(Icons.home),
        //title: SizedBox.shrink()
        label: "Home",
        //title: Text("Home")
      ),
      BottomNavigationBarItem(
          //backgroundColor: Theme.of(context).primaryColor,
          icon: Icon(Icons.dashboard),
          // title: SizedBox.shrink(),
          label: "Category"),
      BottomNavigationBarItem(
          //backgroundColor: Theme.of(context).primaryColor,
          icon: Icon(Icons.cast),
          //title: SizedBox.shrink(),
          label: "Home"),
      BottomNavigationBarItem(
          //backgroundColor: Theme.of(context).primaryColor,
          icon: Icon(Icons.business_center),
          //title: SizedBox.shrink(),
          label: "Home"),
      BottomNavigationBarItem(
          //backgroundColor: Theme.of(context).primaryColor,
          icon: CircleAvatar(
            radius: 12,
            backgroundImage: NetworkImage("https://i.imgur.com/zL4Krbz.jpg"),
          ),
          //title: SizedBox.shrink(),
          label: "Home"),
    ],
  );
}
