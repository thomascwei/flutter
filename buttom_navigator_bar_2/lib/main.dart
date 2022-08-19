import 'package:flutter/material.dart';
import 'buttom_app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo 02',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ButtomAppBarDemo(),
    );
  }
}
