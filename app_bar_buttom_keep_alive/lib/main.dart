import 'package:flutter/material.dart';
import 'package:flutter_demo_02/stay_alive_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: StayAliveDemo());
  }
}

class StayAliveDemo extends StatefulWidget {
  const StayAliveDemo({Key? key}) : super(key: key);

  @override
  State<StayAliveDemo> createState() => _StayAliveDemoState();
}

class _StayAliveDemoState extends State<StayAliveDemo>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stay Alive Demo'),
        bottom: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.directions_bike),
            ),
            Tab(
              icon: Icon(Icons.directions_boat),
            ),
            Tab(
              icon: Icon(Icons.directions_car),
            )
          ],
          controller: _controller,
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          MyHomePage(),
          MyHomePage(),
          MyHomePage(),
        ],
      ),
    );
  }
}
