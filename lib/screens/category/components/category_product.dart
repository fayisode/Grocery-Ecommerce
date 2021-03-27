import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../product/product_screen.dart';

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
                  height: 130,
                  width: 150,
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
              style: GoogleFonts.lato(),
            )
          ],
        ),
      ),
    );
  }
}
