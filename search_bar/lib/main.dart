import 'package:flutter/material.dart';
import 'package:flutter_demo_02/search_bar_demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'demo',
      theme: ThemeData.light(),
      home: SearchBarDemo(),
    );
  }
}
