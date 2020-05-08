import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                    FloatingActionButton(
                      onPressed: onDecreased,
                      child: Icon(
                        FontAwesomeIcons.minus,
                        color: Colors.white,
                      ),
                      backgroundColor:
                          Theme.of(context).accentColor.withOpacity(.6),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0)),
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    FloatingActionButton(
                      onPressed: onIncreased,
                      child: Icon(
                        FontAwesomeIcons.plus,
                        color: Colors.white,
                      ),
                      backgroundColor:
                          Theme.of(context).accentColor.withOpacity(.6),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0)),
                    ),
                  ],
                ),
              ],
            ),
            cardColor: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}
