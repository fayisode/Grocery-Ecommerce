import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../product/product_screen.dart';
import 'package:sizer/sizer.dart';

class CategoryProduct extends StatelessWidget {
  //const ScreenProduct({Key key}) : super(key: key);
  final String id;
  final String title;
  final String imageUrl;

  CategoryProduct(this.id, this.imageUrl, this.title);
  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(ProductScreen.routeName,
        arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    double selectedValW = 1.0.w;
    double selectedValH = 1.0.h;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: InkWell(
        onTap: () => selectCategory(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: imageUrl,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  height: selectedValH <= 7.6 ? 17.0.h : 16.0.h,
                  width: selectedValW <= 4 ? 37.0.w : 25.0.w,
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                  textStyle: TextStyle(
                      fontSize: selectedValW <= 4 ? 10.0.sp : 9.0.sp)),
            )
          ],
        ),
      ),
    );
  }
}
