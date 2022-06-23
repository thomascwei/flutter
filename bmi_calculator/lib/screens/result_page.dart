import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/reuseable_card.dart';
import 'package:bmi_calculator/components/bottom_bottom.dart';

// A Widget that extracts the necessary arguments from
// the ModalRoute.
class ResultPage extends StatelessWidget {
  // const ResultPage({super.key});
  ResultPage({
     this.bmiResult,
     this.resultText,
     this.resultInterpretation,
  });

  final String? bmiResult;
  final String? resultText;
  final String? resultInterpretation;

  static const routeName = '/result';

  @override
  Widget build(BuildContext context) {
    // Extract the arguments from the current ModalRoute
    // settings and cast them as ScreenArguments.
    // final args = ModalRoute.of(context)!.settings.arguments as BMI;

    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'YOUR RESULT',
                style: kTitleTextStyle,
              ),
            )),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText!,
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult!,
                      style: kBMITextStyle,
                    ),
                    Text(
                      resultInterpretation!,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                onPress: () {},
              ),
            ),
            BottomBottom(
              bottomTitle: 'RE-CALCULATE',
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/',
                );
              },
            )
          ],
        ));
  }
}
