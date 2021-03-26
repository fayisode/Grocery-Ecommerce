import 'package:flutter/material.dart';
import 'package:grocery_plus/models/offer_product.dart';

class Product with ChangeNotifier {
  List<ProductOffer> _items = [
    ProductOffer(
        id: "item1",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5,
        category: "Fruit & Vegetables"),
    ProductOffer(
        id: "item1",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5,
        category: "BreakFast"),
    ProductOffer(
        id: "item1",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5,
        category: "Beverages"),
    ProductOffer(
        id: "item1",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5,
        category: "Meat & Fish"),
    ProductOffer(
        id: "item1",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5,
        category: "Snacks"),
    ProductOffer(
        id: "item1",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5,
        category: "Diary"),
    ProductOffer(
        id: "item1",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5,
        category: "Fruit & Vegetables"),
    ProductOffer(
        id: "item1",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5,
        category: "BreakFast"),
    ProductOffer(
        id: "item1",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5,
        category: "Beverages"),
    ProductOffer(
        id: "item1",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5,
        category: "Meat & Fish"),
    ProductOffer(
        id: "item1",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5,
        category: "Snacks"),
    ProductOffer(
        id: "item1",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5,
        category: "Diary"),
    ProductOffer(
        id: "item1",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5,
        category: "Fruit & Vegetables"),
    ProductOffer(
        id: "item1",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5,
        category: "BreakFast"),
    ProductOffer(
        id: "item1",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5,
        category: "Beverages"),
    ProductOffer(
        id: "item1",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5,
        category: "Meat & Fish"),
    ProductOffer(
        id: "item1",
        imageUrl: "assets/images/38805974335_88cd7ef4db_o.jpg",
        title: "Soya Beans Chips",
        description: "Blanditiis facere ex est odit sunt quam voluptas ipsam.",
        kg: 12,
        price: 23.5,
        category: "Snacks"),
    ProductOffer(
        id: "item1",
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
