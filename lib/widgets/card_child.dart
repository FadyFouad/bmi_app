import 'package:flutter/material.dart';

import '../constaants.dart';

///****************************************************
///*** Created by Fady Fouad on 08-May-20 at 03:52.***
///****************************************************

class CardChild extends StatelessWidget {
  final String label;
  final Widget icon;

  const CardChild({
    Key key,
    @required this.label,
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        icon,
        SizedBox(height: 16.0,),
        Text(label, style: TextStyle(fontSize: kTextSize),),
      ],
    );
  }
}
