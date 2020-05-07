import 'package:flutter/material.dart';

import 'card_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    Locale myLocale = Localizations.localeOf(context);

    return MaterialApp(
//      locale: Locale("en"),
//      localizationsDelegates: [
//        GlobalMaterialLocalizations.delegate,
//        GlobalWidgetsLocalizations.delegate,
//        GlobalCupertinoLocalizations.delegate,
//      ],
//      supportedLocales: [
//        const Locale('en'), // English
//        const Locale('ar'), // Arabic
//      ],
      title: 'myLocale.toString()',
      theme: ThemeData.dark().copyWith(),
      home: MyHomePage(title: "Error"),
    );
  }
}

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
              child: Row(
                children: <MyCard>[
                  MyCard(
                    cardLable: Text('r1'),
                    cardIcon: Icon(Icons.ac_unit),
                    cardColor: Theme.of(context).primaryColor,
                  ),
                  MyCard(
                    cardLable: Text('r1'),
                    cardIcon: Icon(Icons.ac_unit),
                    cardColor: Theme.of(context).primaryColor,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                child: MyCard(
                  cardLable: Text('r2'),
                  cardIcon: Icon(Icons.ac_unit),
                  cardColor: Theme.of(context).primaryColor,
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <MyCard>[
                  MyCard(
                    cardLable: Text('r3'),
                    cardIcon: Icon(Icons.ac_unit),
                    cardColor: Theme.of(context).primaryColor,
                  ),
                  MyCard(
                    cardLable: Text('r3'),
                    cardIcon: Icon(Icons.ac_unit),
                    cardColor: Theme.of(context).primaryColor,
                  ),
                ],
              ),
            ),
            Container(
              child: Text(''),
              color: Colors.red,
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
