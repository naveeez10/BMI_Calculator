import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Iconcontent.dart';
import 'reusablecard.dart';
import 'constants.dart';
import 'roundIconbutton.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender {
  male,
  female,
}

int height = 180;
int weight = 60;

class _InputPageState extends State<InputPage> {
  Color malecardcolor = inactiveCardcolor;
  Color femalecardcolor = inactiveCardcolor;

  void updatecolor(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (malecardcolor == inactiveCardcolor) {
        malecardcolor = activeCardcolor;
        femalecardcolor = inactiveCardcolor;
      } else {
        malecardcolor = activeCardcolor;
      }
    } else {
      if (femalecardcolor == inactiveCardcolor) {
        femalecardcolor = activeCardcolor;
        malecardcolor = inactiveCardcolor;
      } else {
        femalecardcolor = activeCardcolor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  updatecolor(Gender.male);
                });
              },
              child: Reusable(
                colour: malecardcolor,
                cardchild: IconContent(
                  gendicon: FontAwesomeIcons.mars,
                  label: 'MALE',
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  updatecolor(Gender.female);
                });
              },
              child: Reusable(
                colour: femalecardcolor,
                cardchild: IconContent(
                    gendicon: FontAwesomeIcons.venus, label: 'FEMALE'),
              ),
            ),
          ])),
          Expanded(
            child: Container(
              width: double.infinity,
              child: Reusable(
                  colour: activeCardcolor,
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'HEIGHT',
                        style: labeltextstyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            height.toString(),
                            style: const TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            'cm',
                            style: labeltextstyle,
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            inactiveTrackColor: Color(0xFF8D8E98),
                            activeTrackColor: Colors.white,
                            thumbColor: Color(0xFFEB1555),
                            overlayColor: Color(0x50EB1555),
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 30)),
                        child: Slider(
                            value: height.toDouble(),
                            min: 120,
                            max: 220,
                            onChanged: (double newvalue) {
                              setState(() {
                                height = newvalue.round();
                              });
                            }),
                      )
                    ],
                  )),
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Reusable(
                colour: activeCardcolor,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'WEIGHT',
                      style: labeltextstyle,
                    ),
                    Text(
                      weight.toString(),
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(icon: FontAwesomeIcons.plus),
                        SizedBox(width: 10,),
                        RoundIconButton(icon: FontAwesomeIcons.minus)
                      ],
                    )
                  ],
                ),
              ),
              Reusable(colour: activeCardcolor),
            ],
          )),
          Container(
            color: bottomcardcolor,
            height: 80,
          )
        ],
      ),
    );
  }
}
