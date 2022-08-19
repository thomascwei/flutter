import 'package:flutter/material.dart';
import 'dart:ui';

class ForstGlass extends StatelessWidget {
  const ForstGlass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints.expand(),
            child: Image.network('https://i.imgur.com/o1SSsWq.jpeg'),
          ),
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 500.0,
                    height: 700.0,
                    decoration: BoxDecoration(color: Colors.grey.shade200),
                    child: Center(
                      child: Text(
                        'Thomas',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
