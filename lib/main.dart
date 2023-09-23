import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyWidget(),
  ));
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              "assets/images/1.jpg",
              fit: BoxFit.cover, // Adjust the BoxFit as needed
            ),
          ),
          // Text below the image
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Android introduction",
              style: TextStyle(
                fontSize: 18, // Adjust the font size as needed
                fontWeight: FontWeight.bold, // Adjust the font weight as needed
              ),
            ),
          ),
          const Text(
            "hello word",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: Column(
              children: [
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: "Enter User Name", labelText: "Name"),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      labelText: "Password", hintText: "Enter Password"),
                ),
                ElevatedButton(
                  child: const Text("Submit"),
                  onPressed: () => {TextStyle: TextButton.styleFrom()},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
