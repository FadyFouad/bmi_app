import 'package:bmiapp/calculator.dart';
import 'package:bmiapp/screens/results_page.dart';
import 'package:bmiapp/widgets/calc_button.dart';
import 'package:bmiapp/widgets/card_child.dart';
import 'package:bmiapp/widgets/exp_weight_age.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constaants.dart';
import '../widgets/card_widget.dart';

///****************************************************
///*** Created by Fady Fouad on 07-May-20 at 05:53.***
///****************************************************

enum Gender {
  male,
  female,
}

Gender selectedGender = Gender.male;
int userHeight = 170;
int userWeight = 65;
int userAge = 21;

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              //Top To widgets
              child: Row(
                children: <MyCard>[
                  MyCard(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    cardChild: CardChild(
                      label: kMALE,
                      icon: Icon(
                        FontAwesomeIcons.male,
                        size: kIconSize,
                      ),
                    ),
                    cardColor: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInActiveCardColor,
                  ),
                  MyCard(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    cardChild: CardChild(
                      label: kFEMALE,
                      icon: Icon(FontAwesomeIcons.female, size: kIconSize),
                    ),
                    cardColor: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInActiveCardColor,
                  ),
                ],
              ),
              //////////////////////////////////////////////////////////////////
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                child: MyCard(
                  cardChild: Column(
                    children: <Widget>[
                      Text(
                        'HEIGHT',
                        style: kTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            userHeight.round().toString(),
                            style: kNumStyle,
                          ),
                          Text('cm'),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            activeTickMarkColor: kActiveCardColor,
                            activeTrackColor: kActiveCardColor,
                            thumbColor: kActiveCardColor,
                            thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 18.0),
                            overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 32.0),
                            overlayColor:
                            Theme
                                .of(context)
                                .accentColor
                                .withOpacity(.3),
                            trackHeight: 4.0,
                            inactiveTrackColor: Colors.grey),
                        child: Slider(
                          onChanged: (double value) {
                            setState(() {
                              userHeight = value.round();
                            });
                          },
                          value: userHeight.toDouble(),
                          min: 100,
                          max: 299,
                        ),
                      ),
                    ],
                  ),
                  cardColor: Theme.of(context).primaryColor,
                ),
              ),
            ),
            Expanded(
              child: Row(children: <Widget>[
                AddRemWidgetChild(
                  label: kWeight,
                  userInput: userWeight,
                  onDecreased: () =>
                      setState(() {
                        userWeight--;
                      }),
                  onIncreased: () =>
                      setState(() {
                        userWeight++;
                      }),
                ),
                AddRemWidgetChild(
                  label: kAge,
                  userInput: userAge,
                  onDecreased: () =>
                      setState(() {
                        userAge--;
                      }),
                  onIncreased: () =>
                      setState(() {
                        userAge++;
                      }),
                ),
              ]),
            ),
            CalcBtnWidget(
                text: kCalc,
                onPressed: () {
                  Calculator calc =
                  Calculator(height: userHeight, weight: userWeight);
//                  calc.calculateBMI();

                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ResultsPage(
                      bmiResult: calc.calculateBMI(),
                      interpretation: calc.getInterpretation(),
                      resultText: calc.getResult(),
                    );
                  }));
                }),
          ],
        ),
      ),
    );
  }
}
