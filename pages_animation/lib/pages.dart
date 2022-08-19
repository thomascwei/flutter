import 'package:flutter/material.dart';
import 'package:flutter_demo_02/router.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4.0,
        title: Text(
          'First Page',
          style: TextStyle(
            fontSize: 36.0,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 64.0,
          ),
          onPressed: () {
            Navigator.of(context).push(CustomRoute(widget: SecondPage()));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4.0,
        title: Text(
          'Second Page',
          style: TextStyle(
            fontSize: 36.0,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.lightGreenAccent,
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: 64.0,
          ),
          onPressed: () {
            // Navigator.of(context).push(CustomRoute(widget: FirstPage()));
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
