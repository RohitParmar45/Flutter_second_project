import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.bold.make(),
        centerTitle: true,
      ),
      body: Column(
        children: [
          _cartList().p32().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("\$9999").text.bold.xl4.make(),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith(
                    (states) => MyTheme.darkBluishColor)),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: "Buying not supported".text.make()));
            },
            child: Text("Buy").text.make(),
          )
        ],
      ).pOnly(left: 12, right: 12),
    );
  }
}

class _cartList extends StatefulWidget {
  const _cartList({super.key});

  @override
  State<_cartList> createState() => _cartListState();
}

class _cartListState extends State<_cartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(
          icon: Icon(Icons.remove_circle_outline),
          onPressed: () {},
        ),
        title: "Item 1".text.make(),
      ),
    );
  }
}
