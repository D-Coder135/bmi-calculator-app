import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // const ReusableCard({
  //   Key key,
  // }) : super(key: key);

  final Color colour;
  final Widget cardChild;
  final Function onPress;

  ReusableCard({@required this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: cardChild,
        // color: Color(0xFF1D1E33), Whenever we use decoration property inside the Container() widget then its compulsory that the color property should be specified inside the decoration property.
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          // color: Color(0xFF1D1E33),
          borderRadius: BorderRadius.circular(10.0),
        ),
        // height: 200.0,
        // width: 170.0,
      ),
    );
  }
}
