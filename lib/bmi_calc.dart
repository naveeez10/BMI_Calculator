import 'package:flutter/material.dart';
import 'dart:math';

class BmiCalculator {
  BmiCalculator({required this.height, required this.weight});
  int height;
  int weight;

  double bmi = 0;
  String getbmi() {
    bmi = weight / pow(height / 100,2);
    return bmi.toStringAsFixed(1);
  }

  String returnresult() {
    if(bmi >= 25) {
      return 'Overweight';
    }
    else if(bmi > 18) {
      return 'Normal';
    }
    else {
      return "Underweight";
    }
  }

  String returninterpretation() {
    if(bmi >= 25) {
      return 'Saale mote';
    }
    else if(bmi > 18) {
      return 'CHAD';
    }
    else {
      return "Kuch khale bsdk";
    }
  }
}