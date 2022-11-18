import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusablecard.dart';
import 'resultspage.dart';
class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.txt});
  VoidCallback onTap;
  Text txt;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: bottomcardcolor,
        child: Center(child: txt),
        width: double.infinity,
        height: 80,
      )
    );
  }
}