import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/SecondPage.dart';
import 'package:flutter_application_2/Utils/MyRoutes.dart';
import 'package:flutter_application_2/pages/Login.dart';
import 'package:flutter_application_2/widgets/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => const Login(),
        MyRoutes.homeRoute: (context) => const MyHomePage(title: 'My Home'),
        MyRoutes.SecondRoute: (context) => SecondPage()
      },
    );
  }
}
