import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusablecard.dart';
import 'bottombutton.dart';
import 'bmi_calc.dart';
import 'input_page.dart';


class Resultspage extends StatefulWidget {
  const Resultspage({Key? key}) : super(key: key);

  @override
  State<Resultspage> createState() => _ResultspageState();
}

class _ResultspageState extends State<Resultspage> {
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
                  calc.returnresult(),
                  textAlign: TextAlign.center,
                  style: resulttextstyle,
                ),
                Text(
                  calc.getbmi(),
                  textAlign: TextAlign.center,
                  style: BMItextstyle,
                ),
                Text(
                  calc.returninterpretation(),
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
