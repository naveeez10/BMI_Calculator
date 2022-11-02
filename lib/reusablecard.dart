import 'package:flutter/material.dart';
class Reusable extends StatelessWidget {

  Color colour;
  Widget? cardchild;
  Reusable({required this.colour,this.cardchild});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
      // height: 200,
      width: 170,
    );
  }
}