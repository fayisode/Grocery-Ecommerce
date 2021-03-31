import 'package:flutter/material.dart';
import 'package:grocery_plus/providers/product.dart';
import 'package:grocery_plus/screens/product/product_detail_screen.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer_util.dart';
import 'screens/product/product_screen.dart';
//import 'screens/home_page.dart';
import 'screens/tab/tab_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      //return LayoutBuilder
      builder: (context, constraints) {
        return OrientationBuilder(
          //return OrientationBuilder
          builder: (context, orientation) {
            //initialize SizerUtil()
            SizerUtil().init(constraints, orientation); //initialize SizerUtil
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
          },
        );
      },
    );
  }
}
