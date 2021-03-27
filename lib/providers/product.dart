import 'package:flutter/material.dart';
import 'package:grocery_plus/models/offer_product.dart';

class Product with ChangeNotifier {
  List<ProductOffer> _items = [
    ProductOffer(
        id: "item1",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description:
            "Blanditiis facere ex est odit sunt quam voluptas ipsam.Inventore est distinctio vel facilis et omnis. Itaque vel totam voluptates earum illum sit et corporis. Illum nulla sequi perferendis minima animi eum quia saepe. Illum ipsa est incidunt blanditiis qui nemo excepturi a veniam. Repudiandae et laborum nihil sint omnis.",
        kg: 12,
        price: 23.5,
        category: "Fruit & Vegetables"),
    ProductOffer(
        id: "item2",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description:
            "Blanditiis facere ex est odit sunt quam voluptas ipsam.Inventore est distinctio vel facilis et omnis. Itaque vel totam voluptates earum illum sit et corporis. Illum nulla sequi perferendis minima animi eum quia saepe. Illum ipsa est incidunt blanditiis qui nemo excepturi a veniam. Repudiandae et laborum nihil sint omnis.Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5,
        category: "BreakFast"),
    ProductOffer(
        id: "item3",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description:
            "Blanditiis facere ex est odit sunt quam voluptas ipsam.Inventore est distinctio vel facilis et omnis. Itaque vel totam voluptates earum illum sit et corporis. Illum nulla sequi perferendis minima animi eum quia saepe. Illum ipsa est incidunt blanditiis qui nemo excepturi a veniam. Repudiandae et laborum nihil sint omnis.Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5,
        category: "Beverages"),
    ProductOffer(
        id: "item4",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description:
            "Blanditiis facere ex est odit sunt quam voluptas ipsam.Inventore est distinctio vel facilis et omnis. Itaque vel totam voluptates earum illum sit et corporis. Illum nulla sequi perferendis minima animi eum quia saepe. Illum ipsa est incidunt blanditiis qui nemo excepturi a veniam. Repudiandae et laborum nihil sint omnis.",
        kg: 12,
        price: 23.5,
        category: "Meat & Fish"),
    ProductOffer(
        id: "item5",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description:
            "Blanditiis facere ex est odit sunt quam voluptas ipsam.Inventore est distinctio vel facilis et omnis. Itaque vel totam voluptates earum illum sit et corporis. Illum nulla sequi perferendis minima animi eum quia saepe. Illum ipsa est incidunt blanditiis qui nemo excepturi a veniam. Repudiandae et laborum nihil sint omnis.",
        kg: 12,
        price: 23.5,
        category: "Snacks"),
    ProductOffer(
        id: "item6",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description:
            "Blanditiis facere ex est odit sunt quam voluptas ipsam.Inventore est distinctio vel facilis et omnis. Itaque vel totam voluptates earum illum sit et corporis. Illum nulla sequi perferendis minima animi eum quia saepe. Illum ipsa est incidunt blanditiis qui nemo excepturi a veniam. Repudiandae et laborum nihil sint omnis.",
        kg: 12,
        price: 23.5,
        category: "Diary"),
    ProductOffer(
        id: "item7",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5,
        category: "Fruit & Vegetables"),
    ProductOffer(
        id: "item8",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5,
        category: "BreakFast"),
    ProductOffer(
        id: "item9",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5,
        category: "Beverages"),
    ProductOffer(
        id: "item10",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5,
        category: "Meat & Fish"),
    ProductOffer(
        id: "item11",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5,
        category: "Snacks"),
    ProductOffer(
        id: "item12",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5,
        category: "Diary"),
    ProductOffer(
        id: "item13",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5,
        category: "Fruit & Vegetables"),
    ProductOffer(
        id: "item14",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5,
        category: "BreakFast"),
    ProductOffer(
        id: "item15",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5,
        category: "Beverages"),
    ProductOffer(
        id: "item16",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5,
        category: "Meat & Fish"),
    ProductOffer(
        id: "item17",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5,
        category: "Snacks"),
    ProductOffer(
        id: "item18",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5,
        category: "Diary")
  ];

  List<ProductOffer> get items {
    return [..._items];
  }

  void addPorduct() {
    notifyListeners();
  }
}
