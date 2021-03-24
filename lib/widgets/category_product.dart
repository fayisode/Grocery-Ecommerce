import 'package:flutter/material.dart';
import '../screens/product_screen.dart';

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
      // child: GridTile(
      //   child: InkWell(
      //     onTap: () => selectCategory(context),
      //     borderRadius: BorderRadius.circular(15),
      //     child: Image.network(
      //       imageUrl,
      //       fit: BoxFit.cover,
      //     ),
      //   ),
      //   footer: GridTileBar(
      //     backgroundColor: Colors.black54,
      //     title: Text(
      //       title,
      //       textAlign: TextAlign.center,
      //       style: Theme.of(context).textTheme.bodyText2,
      //     ),
      //   ),
      // ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: InkWell(
        onTap: () => selectCategory(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Container(
            //   height: 130,
            //   width: 150,
            //   child: Image.network(
            //     imageUrl,
            //     fit: BoxFit.fill,
            //     color: Colors.transparent,
            //     colorBlendMode: BlendMode.softLight,
            //   ),
            // ),
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
              style: Theme.of(context).textTheme.bodyText2,
            )
          ],
        ),
      ),
    );
  }
}
