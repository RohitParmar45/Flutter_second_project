import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/Models/Item.dart';
import 'package:flutter_application_2/Models/cart.dart';
import 'package:flutter_application_2/Utils/MyRoutes.dart';
import 'package:flutter_application_2/core/store.dart';
import 'package:flutter_application_2/pages/cart_page.dart';
import 'package:flutter_application_2/widgets/home_widget/catalog_header.dart';
import 'package:flutter_application_2/widgets/home_widget/catalog_list.dart';
import 'package:flutter_application_2/widgets/theme.dart';
import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart' as http;

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final url = "https://api.jsonbin.io/b/604dbddb683e7e079c4eefd3";
  @override
  void initState() {
    super.initState();
    localdata();
  }

  localdata() async {
    await Future.delayed(const Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");

    // var response = await http.get(Uri.parse(url));
    // final catalogJson = response.body;
    var decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];

    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final cart = (VxState.store as MyStore).cart;
    return Scaffold(
      backgroundColor: context.canvasColor,
      floatingActionButton: VxBuilder(
        mutations: {AddMutation, RemoveMutation},
        builder: (BuildContext context, store, VxStatus? status) =>
            FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CartPage()));
          },
          backgroundColor: Colors.deepPurple,
          child: Icon(
            CupertinoIcons.cart,
            color: Colors.white,
          ),
        ).badge(
                color: Vx.red500,
                textStyle:
                    TextStyle(color: Vx.black, fontWeight: FontWeight.bold),
                size: 25,
                count: cart.items.length),
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Catalogheader(),
              if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                CatalogList().py16().expand()
              else
                Center(
                  child: CircularProgressIndicator().centered().py16().expand(),
                )
            ],
          ),
        ),
      ),
    );
  }
}
