import 'package:flutter/material.dart';

import '../constaants.dart';
import 'card_widget.dart';

///****************************************************
///*** Created by Fady Fouad on 08-May-20 at 06:35.***
///****************************************************

class AddRemWidgetChild extends StatelessWidget {
  final String label;
  final int userInput;
  final Function onIncreased;
  final Function onDecreased;

  const AddRemWidgetChild(
      {Key key,
      @required this.label,
      @required this.userInput,
      @required this.onIncreased,
      @required this.onDecreased})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: <MyCard>[
          MyCard(
            cardChild: Column(
              children: <Widget>[
                Text(
                  label,
                  style: kTextStyle,
                ),
                Text(
                  userInput.toString(),
                  style: kNumStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FABWidget(onPressed: onDecreased, icon: Icons.add,),
                    SizedBox(
                      width: 16.0,
                    ),
                    FABWidget(onPressed: onIncreased, icon: Icons.add,),
                  ],
                ),
              ],
            ),
            cardColor: Theme
                .of(context)
                .primaryColor,
          ),
        ],
      ),
    );
  }
}

class FABWidget extends StatelessWidget {
  const FABWidget({
    Key key,
    @required this.onPressed, this.icon,
  }) : super(key: key);

  final Function onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(icon),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: Theme
          .of(context)
          .accentColor
          .withOpacity(.6),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0)),
//      fillColor: Color(0xFF4C4F5E),
    );
  }
}
//onPressed: onIncreased,
//child: Icon(
//FontAwesomeIcons.plus,
//color: Colors.white,
//),
//backgroundColor:
//Theme.of(context).accentColor.withOpacity(.6),
//shape: RoundedRectangleBorder(
//borderRadius: BorderRadius.circular(16.0)),
