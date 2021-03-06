import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/category_product.dart';
import '../../models/category.dart';
import 'package:sizer/sizer.dart';

class CategoryScreen extends StatelessWidget {
  final List<Category> screenProduct = [
    Category(
        id: "item1",
        imageUrl: "assets/images/12165979954_dfe0febd85_o.jpg",
        title: "Fruit & Vegetables"),
    Category(
        id: "item2",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "BreakFast"),
    Category(
        id: "item3",
        imageUrl: "assets/images/59144197_3666a94a59_o.jpg",
        title: "Beverages"),
    Category(
        id: "item4",
        imageUrl: "assets/images/8043089660_ca4c7e2bf3_o.jpg",
        title: "Meat & Fish"),
    Category(
        id: "item5",
        imageUrl: "assets/images/14482128444_5c4e050275_o.jpg",
        title: "Snacks"),
    Category(
        id: "item6",
        imageUrl: "assets/images/23829337548_77c73e43ce_o.jpg",
        title: "Diary")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 5.0.w, right: 30.0.w, top: 2.6.h),
              child: Text("What would you like to buy?",
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontSize: 21.0.sp, fontWeight: FontWeight.bold))),
            ),
            Expanded(
              child: new GridView.builder(
                padding: EdgeInsets.all(1.3.h),
                itemCount: screenProduct.length,
                itemBuilder: (ctx, i) => CategoryProduct(screenProduct[i].id,
                    screenProduct[i].imageUrl, screenProduct[i].title),
                gridDelegate: new SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    childAspectRatio: 2 / 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
