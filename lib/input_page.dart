import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: Container(
                    // color: Color(0xFF1D1E33), Whenever we use decoration property inside the Container() widget then its compulsory that the color property should be specified inside the decoration property.
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    // height: 200.0,
                    // width: 170.0,
                  ),
                ),
                Expanded(child: null),
              ],
            ),
          ),
          Expanded(child: null),
          Expanded(child: null)
        ],
      ),
      //Center(
      // child: Text('Body Text'),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}
