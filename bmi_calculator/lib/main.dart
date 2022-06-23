import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/screens/result_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),

      // textTheme:
      //     const TextTheme(bodyText2: TextStyle(color: Colors.white))),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => InputPage(),
        '/result' : (BuildContext context) => ResultPage(),
      },
    );
  }
}
