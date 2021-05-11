import 'dart:math';

import 'package:flutter/material.dart';

class CalculatorBrain {
  final int height;
  final int weight;

  CalculatorBrain({@required this.height, @required this.weight});

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(
        1); // This method is used to return the value as a string after fixing the number of significant digits provided in the parameter.
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getIterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Keep following your current diet and routine';
    } else {
      return 'You have a lower than a normal body weight. You need to add some more stuffs to your diet';
    }
  }
}
