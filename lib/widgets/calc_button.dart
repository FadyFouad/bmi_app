import 'package:flutter/material.dart';

import '../constaants.dart';

///****************************************************
///*** Created by Fady Fouad on 08-May-20 at 09:45.***
///****************************************************

class CalcBtnWidget extends StatelessWidget {
  const CalcBtnWidget({
    Key key,
    this.text,
    this.onPressed,
  }) : super(key: key);

  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
//          () {
//        Navigator.pushNamed(context, ResultsPage.routeName);
//      },
      child: Container(
        child: Center(
            child: Text(
          text,
          style: TextStyle(fontSize: kTextSize),
        )),
        color: kActiveCardColor,
        margin: EdgeInsets.only(top: 8.0),
        width: double.infinity,
        height: 100.0,
      ),
    );
  }
}
