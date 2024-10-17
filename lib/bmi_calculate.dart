import 'dart:math';

class BodyBmi {
  final int height;
  final int weight;
  double? _bmi;

  BodyBmi({required this.height, required this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);  // Store the result in _bmi
    return _bmi!.toStringAsFixed(1);  // Return the BMI as a string with 1 decimal place
  }

  String getResult() {
    if (_bmi == null) {
      return 'BMI not calculated yet';  // Handle the case where _bmi is null
    }else if (_bmi! >= 25) {
      return 'Overweight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi == null) {
      return 'BMI not calculated yet';  // Ensure _bmi is not null
    }else if (_bmi! >= 25) {
      return 'Your body mass index is over. DO exercise more';
    } else if (_bmi! > 18.5) {
      return 'Your Body Mass Index is normal. Good Job!';
    } else {
      return 'Your Body Mass Index is underweight. Eat food a bit more.';
    }
  }
}



