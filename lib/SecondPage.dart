import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/drawer.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: const Center(
        child: Text("Welcome to Second Page"),
      ),
      drawer: const MyDrawer(),
    );
  }
}
