import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData iconContent;
  final String textContent;

  IconContent(this.iconContent, this.textContent);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconContent,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          textContent,
          // style: TextStyle(color: Color(0xFF8D8E98), fontSize: 18.0),
          style: labelTextStyle,
        ),
      ],
    );
  }
}
