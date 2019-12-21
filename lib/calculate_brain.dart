import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain{
  final int weight;
  final int height;
  double _bmi;

  CalculatorBrain({@required this.weight, @required this.height});

  String getBMI(){
    _bmi = weight / (pow(height*0.01 , 2));
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi >= 25){
      return 'Overweight';
    }else if(_bmi > 18.5){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if(_bmi >= 25){
      return 'Moderate risk of developing heart disease, high blood pressure, stroke, diabetes';
    }else if(_bmi > 18.5){
      return 'Low Risk (healthy range)';
    }else{
      return 'Risk of developing problems such as nutritional deficiency and osteoporosis';
    }
  }
}