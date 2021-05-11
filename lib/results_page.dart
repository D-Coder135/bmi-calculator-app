import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Result',
          style: kTitleTextStyle,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // Expanded(
          //   child: Container(
          //     child: Text(
          //       'Your Result',
          //       style: kTitleTextStyle,
          //     ),
          //   ),
          // ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Normal',
                    style: kResultTextStyle,
                  ),
                  Text(
                    '20.0',
                    style: kBMITextStyle,
                  ),
                  Text(
                    'Your BMI is quite low. You should eat more!',
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                  BottomButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
