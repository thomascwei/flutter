import 'package:flutter/material.dart';

class ToolTip extends StatelessWidget {
  const ToolTip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
      ),
      body: Center(
        child: Tooltip(
          message: 'hello world',
          child: Image.network('https://i.imgur.com/4YUgQG9.jpeg'),
        ),
      ),
    );
  }
}
