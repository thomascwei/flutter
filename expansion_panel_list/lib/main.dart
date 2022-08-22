import 'package:flutter/material.dart';
import 'expansion_panel_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'demo',
      theme: ThemeData.dark(),
      home: ExpansionPanelListDemo(),
    );
  }
}
