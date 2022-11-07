import 'package:flutter/material.dart';
import 'home_page.dart';


void main() => runApp(new MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator App",
      theme: ThemeData(primarySwatch: Colors.red ),
      home: HomePage(),
    );
  }
}
