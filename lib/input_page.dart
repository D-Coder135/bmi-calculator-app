import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    const bottomContainerHeight = 80.0;
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
                    Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              Color(0xFF1D1E33),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10.0),
            height: bottomContainerHeight,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  // const ReusableCard({
  //   Key key,
  // }) : super(key: key);

  final Color colour;

  ReusableCard(this.colour);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Color(0xFF1D1E33), Whenever we use decoration property inside the Container() widget then its compulsory that the color property should be specified inside the decoration property.
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        // color: Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(10.0),
      ),
      // height: 200.0,
      // width: 170.0,
    );
  }
}
