import 'package:flutter/material.dart';
import 'constants.dart';
import 'input_page.dart';
class RoundIconButton extends StatelessWidget {
  IconData? icon;
  final Function func;
  RoundIconButton({this.icon, required this.func});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: (){
          func();
        },
        child: Icon(icon),
        shape: CircleBorder(),
        elevation: 0,
        fillColor: Color(0xFF4C4F5E),
        constraints: BoxConstraints.tightFor(
          width: 56,
          height: 56
        ),
    );
  }
}
