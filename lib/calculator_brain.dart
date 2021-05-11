import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  CalculatorBrain({this.height, this.weight});

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

  String getIterpretation() {}
}
