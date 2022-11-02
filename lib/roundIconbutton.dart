import 'package:flutter/material.dart';
class RoundIconButton extends StatelessWidget {
  IconData? icon;

  RoundIconButton({this.icon});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: (){
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
