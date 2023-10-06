import 'dart:convert';

import 'package:flutter/material.dart';

class CatalogModel {
  static List<Item> items = [
    Item(
        id: 1,
        name: "I phone 12",
        desc: "apple iphone 12th generation",
        price: 999,
        color: Colors.black.toString(),
        image:
            "https://i5.walmartimages.com/asr/efecddbd-aa8d-45e3-9743-b49b25471f40.bc852a00bbf5df1136e4bbc2fb435cda.jpeg"),
  ];

  Item getById(int id) {
    return items.firstWhere((element) => element.id == id, orElse: null);
  }

  Item getbyPos(int pos) {
    return items[pos];
  }
}

class Item {
  int id;
  String name;
  String desc;
  num price;
  String color;
  String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'desc': desc,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'],
      name: map['name'],
      desc: map['desc'],
      price: map['price'],
      color: map['color'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());
}
