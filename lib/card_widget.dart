import 'package:flutter/material.dart';

///****************************************************
///*** Created by Fady Fouad on 07-May-20 at 02:42.***
///****************************************************

class MyCard extends StatelessWidget {
  final Color cardColor;
  final Widget cardChild;

  const MyCard(
      {Key key,
      @required this.cardColor,
      @required this.cardChild})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: <Widget>[
            cardChild
          ],
        ),
//      color: Color(0xff1d1e33),
        margin: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: cardColor,
        ),
      ),
    );
  }
}
