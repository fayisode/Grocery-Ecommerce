import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_navigation_bar/responsive_navigation_bar.dart';

//BottomNavigationBar
NavigationBar buildBottomNavigationBar(
    BuildContext context, _selectPage, _selectedPageIndex) {
  // return BottomNavigationBar(
  //   //elevation: 5,
  //   showSelectedLabels: false,
  //   onTap: _selectPage,
  //   unselectedItemColor: Theme.of(context).buttonColor,
  //   backgroundColor: Theme.of(context).scaffoldBackgroundColor,
  //   selectedItemColor: Theme.of(context).primaryColor,
  //   unselectedFontSize: 4,
  //   selectedFontSize: 4,
  //   currentIndex: _selectedPageIndex,
  //   items: const <BottomNavigationBarItem>[
  //     BottomNavigationBarItem(
  //       //backgroundColor: Theme.of(context).primaryColor,
  //       icon: Icon(Icons.home),
  //       //title: SizedBox.shrink()
  //       label: "Home",
  //       //title: Text("Home")
  //     ),
  //     BottomNavigationBarItem(
  //         //backgroundColor: Theme.of(context).primaryColor,
  //         icon: Icon(Icons.dashboard),
  //         // title: SizedBox.shrink(),
  //         label: "Category"),
  //     BottomNavigationBarItem(
  //         //backgroundColor: Theme.of(context).primaryColor,
  //         icon: Icon(Icons.cast),
  //         //title: SizedBox.shrink(),
  //         label: "Home"),
  //     BottomNavigationBarItem(
  //         //backgroundColor: Theme.of(context).primaryColor,
  //         icon: Icon(Icons.business_center),
  //         //title: SizedBox.shrink(),
  //         label: "Home"),
  //     BottomNavigationBarItem(
  //         //backgroundColor: Theme.of(context).primaryColor,
  //         icon: CircleAvatar(
  //           radius: 12,
  //           backgroundImage: NetworkImage("https://i.imgur.com/zL4Krbz.jpg"),
  //         ),
  //         //title: SizedBox.shrink(),
  //         label: "Home"),
  //   ],
  // );
  return NavigationBar(
      backgroundColor:
          MediaQuery.of(context).platformBrightness == Brightness.dark
              ? const Color(0xff3c3c3c)
              : const Color(0xffbebebe),
      inactiveIconColor:
          MediaQuery.of(context).platformBrightness == Brightness.dark
              ? const Color(0xffaaaaaa)
              : const Color(0xff969696),
      textStyle: GoogleFonts.lato(
          textStyle:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      navigationBarButtons: const <NavigationBarButton>[
        NavigationBarButton(
          text: 'Home',
          icon: Icons.home,
          backgroundGradient: LinearGradient(
            colors: <Color>[Colors.cyan, Colors.blue],
          ),
        ),
        NavigationBarButton(
          text: 'Category',
          icon: Icons.dashboard,
          backgroundGradient: LinearGradient(
            colors: <Color>[Colors.cyan, Colors.teal],
          ),
        ),
        NavigationBarButton(
          text: 'Cast',
          icon: Icons.cast,
          backgroundGradient: LinearGradient(
            colors: <Color>[Colors.blue, Colors.teal],
          ),
        ),
        NavigationBarButton(
          text: 'Order',
          icon: Icons.business_center,
          backgroundGradient: LinearGradient(
            colors: <Color>[Colors.purple, Colors.cyan],
          ),
        ),
        NavigationBarButton(
          text: 'Profile',
          icon: Icons.people,
          backgroundGradient: LinearGradient(
            colors: <Color>[Colors.cyan, Colors.indigo],
          ),
        )
      ],
      selectedIndex: _selectedPageIndex,
      onTabChange: _selectPage);
}
