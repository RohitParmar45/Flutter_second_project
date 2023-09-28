import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // const imageUrl =
    //     "https://tse1.mm.bing.net/th?id=OIP.OF59vsDmwxPP1tw7b_8clQHaE8&pid=Api&P=0&h=220";
    return Drawer(
      child: ListView(
        children: const [
          DrawerHeader(
              child: UserAccountsDrawerHeader(
            accountName: Text("Rohit Parmar"),
            accountEmail: Text("rohitparmar181589@gmail.com"),
            // currentAccountPicture: Image.network(imageUrl),
          ))
        ],
      ),
    );
  }
}
