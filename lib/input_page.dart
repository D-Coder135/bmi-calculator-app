import 'package:flutter/material.dart';
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
                    children: <Widget>[
                      Text(
                        '180',
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
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
