import 'package:flutter/material.dart';
import 'each_view.dart';

class ButtomAppBarDemo extends StatefulWidget {
  const ButtomAppBarDemo({Key? key}) : super(key: key);

  @override
  State<ButtomAppBarDemo> createState() => _ButtomAppBarDemoState();
}

class _ButtomAppBarDemoState extends State<ButtomAppBarDemo> {
  late List<Widget> _eachView = [];
  int _index = 0;

  @override
  void initState() {
    super.initState();
    _eachView
      ..add(EachView(title: 'Home'))
      ..add(EachView(title: 'Email'))
      ..add(EachView(title: 'Airplay'))
      ..add(EachView(title: 'Access Alarms'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return EachView(title: 'New Page');
          }));
        },
        tooltip: '提示語',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _eachView[_index],
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlueAccent,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  _index = 0;
                });
              },
              icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _index = 1;
                });
              },
              icon: Icon(Icons.email),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _index = 2;
                });
              },
              icon: Icon(Icons.airplay),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _index = 3;
                });
              },
              icon: Icon(Icons.access_alarms),
            ),
          ],
        ),
      ),
    );
  }
}
