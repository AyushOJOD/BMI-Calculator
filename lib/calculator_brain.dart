import 'dart:math';

class CalculatorBrain{

  CalculatorBrain({this.weight, this.height});

  final int? height;
  final int? weight;
  double _bmi = 0.0;

  String calculateBMI(){
     _bmi = weight! / pow(height! / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi != null && _bmi >= 25 ){
      return 'Overweight';
    }
    else {
      if(_bmi > 18.5){
      return 'Normal';
    }
    else{
      return 'Underweight';
    }
    }
  }

  String getConclusion(){
    if(_bmi >= 25){
      return 'You have a higher than normal body weight. Try to exercise more';
    }
    else if(_bmi > 18.5){
      return 'You have a Normal body weight. Great Job!';
    }
    else{
      return 'You have a lower than required body weight. You can eat a bit more';
    }
  }

}