import 'package:bmiapp/widgets/card_child.dart';
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
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
                      Text('r3'),
                      Icon(Icons.ac_unit),
                    ],
                  ),
                  cardColor: Theme.of(context).primaryColor,
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <MyCard>[
                  MyCard(
                    cardChild: Column(
                      children: <Widget>[
                        Text('r3'),
                        Icon(
                          FontAwesomeIcons.female,
                          size: kIconSize,
                        ),
                      ],
                    ),
                    cardColor: Theme.of(context).primaryColor,
                  ),
                  MyCard(
                    cardChild: Column(
                      children: <Widget>[
                        Text('r3'),
                        Icon(
                          FontAwesomeIcons.male,
                          size: 80.0,
                        ),
                      ],
                    ),
                    cardColor: Theme.of(context).primaryColor,
                  ),
                ],
              ),
            ),
            Container(
              child: Center(child: Text(
                'Calculate', style: TextStyle(fontSize: kTextSize),)),
              color: kActiveCardColor,
              margin: EdgeInsets.only(top: 8.0),
              width: double.infinity,
              height: 100.0,
            )
          ],
        ),
      ),
    );
  }
}
