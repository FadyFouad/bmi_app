import 'package:bmiapp/widgets/calc_button.dart';
import 'package:bmiapp/widgets/card_widget.dart';
import 'package:flutter/material.dart';

import '../constaants.dart';

///****************************************************
///*** Created by Fady Fouad on 08-May-20 at 07:23.***
///****************************************************

class ResultsPage extends StatelessWidget {
  static const routeName = 'ResultPage';

  ResultsPage(
      {@required this.interpretation,
      @required this.bmiResult,
      @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kResultTitle),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16.0),
            alignment: Alignment.center,
            child: Text(
              kYourResult,
              textAlign: TextAlign.center,
              style: kYourResultStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: MyCard(
              cardColor: kInActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    resultText,
                    style: kResultTextStyle.copyWith(color: Color(0xFF24D876)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32.0, bottom: 42.0),
                    child: Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kTextStyle,
                  ),
                ],
              ),
            ),
          ),
          CalcBtnWidget(
            text: kReCalc,
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
