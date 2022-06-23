import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomBottom extends StatelessWidget {
  BottomBottom({required this.bottomTitle,  this.onTap});

  final VoidCallback? onTap;
  final String bottomTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(bottom: 20.0),
        alignment: Alignment.center,
        color: kBottomColour,
        height: kBottomContainerHeight,
        margin: const EdgeInsets.only(top: 15.0),
        width: double.infinity,
        child: Text(
          bottomTitle,
          style: kLargeBottomTextSyle,
        ),
      ),
    );
  }
}
