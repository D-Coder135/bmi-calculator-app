import 'package:bmi_calculator/screens/results_page.dart';
import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/bottom_button.dart';
import '../components/icon_content.dart';
import '../components/reusable_card.dart';
import '../constants.dart';
import 'package:bmi_calculator/calculator_brain.dart';

enum Gender {
  MALE,
  FEMALE,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 40;
  int age = 10;

  // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;

  // void selectMaleCard() {
  //   maleCardColor = activeCardColor;
  //   femaleCardColor = inactiveCardColor;
  // }
  //
  // void selectFemaleCard() {
  //   femaleCardColor = activeCardColor;
  //   maleCardColor = inactiveCardColor;
  // }
  //
  // void updateColor(Gender gender) {
  //   gender == Gender.MALE
  //       ? maleCardColor == inactiveCardColor
  //           ? selectMaleCard()
  //           : maleCardColor = inactiveCardColor
  //       : femaleCardColor == inactiveCardColor
  //           ? selectFemaleCard()
  //           : femaleCardColor = inactiveCardColor;
  //   // if (gender == Gender.MALE) {
  //   //   if (maleCardColor == inactiveCardColor) {
  //   //     selectMaleCard();
  //   //   } else {
  //   //     maleCardColor = inactiveCardColor;
  //   //   }
  //   // }
  //   // // female card pressed
  //   // if (gender == Gender.FEMALE) {
  //   //   if (femaleCardColor == inactiveCardColor) {
  //   //     selectFemaleCard();
  //   //   } else {
  //   //     femaleCardColor = inactiveCardColor;
  //   //   }
  //   // }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        // updateColor(Gender.FEMALE);
                        selectedGender = Gender.MALE;
                      });
                    },
                    // colour: maleCardColor,
                    colour: selectedGender == Gender.MALE
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(FontAwesomeIcons.male, 'MALE'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        // updateColor(Gender.FEMALE);
                        selectedGender = Gender.FEMALE;
                      });
                    },
                    // colour: femaleCardColor,
                    colour: selectedGender == Gender.FEMALE
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(FontAwesomeIcons.female, 'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment
                        .baseline, // If you want to align the contents of a widget as per the baseline then you must also set the textBaseLine property otherwise the app will crash.
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF8D8E98),
                      activeTrackColor: Colors.white,
                      overlayColor: Color(0x29EB1555),
                      thumbColor: Color(0xFFEB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      // activeColor: Colors.white,
                      // inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            // FloatingActionButton(
                            //   backgroundColor: Color(0xFF4C4F5E),
                            //   child: Icon(
                            //     Icons.add,
                            //     color: Colors.white,
                            //   ),
                            // ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                            // FloatingActionButton(
                            //   backgroundColor: Color(0xFF4C4F5E),
                            //   child: Icon(
                            //     Icons.add,
                            //     color: Colors.white,
                            //   ),
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            buttonTitle: 'CALCULATE',
            onTap: () {
              CalculatorBrain calculatorBrain =
                  CalculatorBrain(height: height, weight: weight);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultsPage(
                            bmiResult: calculatorBrain.calculateBMI(),
                            resultText: calculatorBrain.getResultText(),
                            interpretation: calculatorBrain.getIterpretation(),
                          )));
            },
          ),
        ],
      ),
    );
  }
}
