import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center vertically
          children: [
            Text("data"),
            Text("welcome to Second activity", selectionColor: Colors.black),
          ],
        ),
      ),
    );
  }
}
