import 'package:flutter/material.dart';
import 'package:flutter_application_2/Models/Item.dart';
import 'package:flutter_application_2/widgets/drawer.dart';
import 'package:flutter_application_2/widgets/item_widget.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
