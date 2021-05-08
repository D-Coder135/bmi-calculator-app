import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        // The hashcode for the opaque is 0xFF. Add this in place of # symbol in every hexcode.
        primaryColor: Color(0xFF0A0D22),
        scaffoldBackgroundColor: Color(
            0xFF0A0D22), // This is the method by which we can customize the Text Style by our own.
      ),
      home: InputPage(),
    );
    // ThemeData(
    //   // The hashcode for the opaque is 0xFF. Add this in place of # symbol in every hexcode.
    //   primaryColor: Color(0xFF0A0D22),
    //   scaffoldBackgroundColor: Color(0xFF0A0D22),
    //   textTheme: TextTheme(
    //     body1: TextStyle(
    //         color: Colors
    //             .white), // This is the method by which we can customize the Text Style by our own.
    //   ),
    // ),
  }
}

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
      body: Center(
        child: Text('Body Text'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}
