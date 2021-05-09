import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';

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
                      Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        activeColor: Color(0xFFEB1555),
                      ),
                    ],
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
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            height: kBottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
