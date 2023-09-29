import 'package:flutter/material.dart';

class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "I phone 12",
        desc: "apple iphone 12th generation",
        price: 999,
        color: Colors.black.toString(),
        image:
            "https://i5.walmartimages.com/asr/efecddbd-aa8d-45e3-9743-b49b25471f40.bc852a00bbf5df1136e4bbc2fb435cda.jpeg"),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
