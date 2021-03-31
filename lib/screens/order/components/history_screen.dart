import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_plus/models/offer_product.dart';
import 'package:grocery_plus/providers/product.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class HistoryScreen extends StatefulWidget {
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    final listproduct = Provider.of<Product>(context);
    final productslist = listproduct.items;
    return ListView.builder(
      itemCount: productslist.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: <Widget>[
            buildListTile(context, productslist, index),
            Divider()
          ],
        );
      },
    );
  }

  ListTile buildListTile(
      BuildContext context, List<ProductOffer> productslist, int index) {
    return ListTile(
        contentPadding: EdgeInsets.all(0),
        leading: CircleAvatar(
          radius: 6.0.w,
          backgroundColor: Theme.of(context).primaryColor,
          child: Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
        ),
        title: new Text(
          'Orders #' + productslist[index].id,
          style: GoogleFonts.lato(
              textStyle:
                  TextStyle(fontSize: 11.0.sp, fontWeight: FontWeight.bold)),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text("Delivered",
                style: GoogleFonts.lato(
                    textStyle: TextStyle(
                        fontSize: 10.0.sp, color: Colors.lightGreen))),
            new Text("October 28,2020",
                style: GoogleFonts.lato(
                    textStyle: TextStyle(
                        fontSize: 11.0.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey))),
          ],
        ),
        trailing: Text('R' + productslist[index].price.toString(),
            style: GoogleFonts.lato(
                textStyle: TextStyle(
                    color: Colors.orange,
                    fontSize: 14.0.sp,
                    fontWeight: FontWeight.bold))),
        onTap: () {/* react to the tile being tapped */});
  }
}
