import 'package:flutter/material.dart';
import './pages/airplay_screen.dart';
import './pages/email_screen.dart';
import './pages/home_screen.dart';

class ButtomNavigationWidget extends StatefulWidget {
  const ButtomNavigationWidget({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  State<ButtomNavigationWidget> createState() => _ButtomNavigationWidgetState();
}

class _ButtomNavigationWidgetState extends State<ButtomNavigationWidget> {
  int _index = 0;
  List<Widget> barItemList = [];

  @override
  void initState() {
    barItemList
      ..add(HomeScreen())
      ..add(EmailScreen())
      ..add(AirplayScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: barItemList[_index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.email),
            label: 'EMAIL',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplay),
            label: 'AIRPLAY',
          ),
        ],
        currentIndex: _index,
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}
