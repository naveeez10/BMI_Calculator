import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusablecard.dart';
import 'bottombutton.dart';

class Resultspage extends StatelessWidget {
  const Resultspage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: Container(child: Text('Your Result',style: Titletextstyle))),
          Expanded(flex: 5,child: Reusable(colour: activeCardcolor,
            cardchild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Normal",
                  textAlign: TextAlign.center,
                  style: resulttextstyle,
                ),
                Text(
                  "18.3",
                  textAlign: TextAlign.center,
                  style: BMItextstyle,
                ),
                Text(
                  "Eat more bsdk",
                  textAlign: TextAlign.center,
                  style: prestextstyle,
                ),
                BottomButton(onTap: (){
                  Navigator.pop(context);
                },txt: Text('RE-CALCULATE',style: labeltextstyle,),)
              ],
            ),
          ),)
        ],
      ),
    );
  }
}
