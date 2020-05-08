import 'package:flutter/material.dart';

///****************************************************
///*** Created by Fady Fouad on 07-May-20 at 02:42.***
///****************************************************


class MyCard extends StatelessWidget {
  final Color cardColor;
  final Widget cardChild;
  final Function onTap;

  const MyCard(
      {Key key, @required this.cardColor, @required this.cardChild, @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        borderRadius: BorderRadius.circular(8.0),
        onTap: onTap,
        child: Container(
//      color: Color(0xff1d1e33),
          margin: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: cardColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[cardChild],
          ),
        ),
      ),
    );
  }
}
