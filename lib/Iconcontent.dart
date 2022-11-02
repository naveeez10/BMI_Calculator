import 'package:flutter/material.dart';
import 'constants.dart';
class IconContent extends StatelessWidget {
  IconData gendicon;
  String label;
  IconContent({required this.gendicon,required this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
        Icon(
          gendicon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(label,style: labeltextstyle
        )
      ],
    );
  }
}
