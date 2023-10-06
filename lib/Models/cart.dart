import 'package:flutter_application_2/Models/Item.dart';

class CartModel {
  //singleton class
  static final cartModel = CartModel._internal();
  CartModel._internal();
  factory CartModel() => cartModel;

  CatalogModel _catalog = CatalogModel();

  //store ids of each items
  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //add item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  //remove item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
