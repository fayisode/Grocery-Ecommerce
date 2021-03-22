import 'package:flutter/material.dart';
import '../widgets/category_product.dart';
import '../models/category.dart';

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
            new Padding(
              padding: const EdgeInsets.all(12.0),
              child: new Column(
                children: <Widget>[
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text(
                        "Grocery Plus",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      new Icon(Icons.notifications_none)
                    ],
                  ),
                  new ListTile(
                      contentPadding: EdgeInsets.all(0),
                      leading: CircleAvatar(
                        backgroundColor: Theme.of(context).primaryColor,
                        child: Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                      ),
                      title: new Text(
                        "Your Location",
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.normal),
                      ),
                      subtitle: new Text(
                        "32 Llanberis Close, Tonteg, CF35 IHR",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: new IconButton(
                        icon: new Icon(Icons.keyboard_arrow_right),
                        onPressed: () => print("Icon is working"),
                      ),
                      onTap: () {/* react to the tile being tapped */}),
                  new Container(
                    height: 50,
                    padding: EdgeInsets.all(10),
                    child: Row(children: <Widget>[
                      Icon(
                        Icons.search,
                        //color: Colors.black,
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: '  Search Anything',
                              border: InputBorder.none),
                        ),
                      )
                    ]),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: new GridView.builder(
                padding: const EdgeInsets.all(10),
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
