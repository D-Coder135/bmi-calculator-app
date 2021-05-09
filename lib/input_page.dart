import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

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
                        ? activeCardColor
                        : inactiveCardColor,
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
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: IconContent(FontAwesomeIcons.female, 'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
