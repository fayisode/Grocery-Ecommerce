import 'package:flutter/material.dart';
import 'package:grocery_plus/providers/product.dart';
import 'package:grocery_plus/screens/product_detail_screen.dart';
import 'package:provider/provider.dart';
import './screens/product_screen.dart';
//import 'screens/home_page.dart';
import 'screens/tab_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      //builder: (ctx) => Product(),
      create: (context) => Product(),
      child: MaterialApp(
        title: 'Grocey Plus',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue,
            accentColor: Color(0xFFD8ECF1),
            scaffoldBackgroundColor: Color(0xFFF3F5F7)),
        home: TabBars(),
        routes: {
          ProductScreen.routeName: (ctx) => ProductScreen(),
          ProductDetailScreen.routeNames: (ctx) => ProductDetailScreen()
        },
      ),
    );
  }
}
