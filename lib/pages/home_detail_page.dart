// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_application_2/Models/Item.dart';
import 'package:flutter_application_2/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  final Item catalog;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.canvasColor,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: Vx.mH8,
        children: [
          "\$${catalog.price}".text.red800.xl4.bold.make(),
          ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => MyTheme.darkBluishColor),
                      shape: MaterialStatePropertyAll(StadiumBorder())),
                  child: "Add to card".text.color(context.cardColor).xs.make())
              .wh(100, 50)
        ],
      ).p32(),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.image)
                        .backgroundColor(context.canvasColor))
                .h32(context),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.convey,
              edge: VxEdge.top,
              child: Container(
                color: context.canvasColor,
                width: context.screenWidth,
                child: Column(children: [
                  catalog.name.text.xl4.color(context.primaryColor).bold.make(),
                  catalog.desc.text
                      .color(context.primaryColor)
                      .xl
                      .textStyle(context.captionStyle)
                      .make(),
                  10.heightBox,
                  "This product is the best product , which gives a greate range of features , it is most affortable product and high quality features over here"
                      .text
                      .color(context.primaryColor)
                      .textStyle(context.captionStyle)
                      .make()
                ]).p64(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
