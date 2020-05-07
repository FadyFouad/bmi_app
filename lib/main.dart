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
                  MyCard(),
                  MyCard(),
                ],
              ),
            ),
            Expanded(
              child: MyCard(),
            ),
            Expanded(
              child: Row(
                children: <MyCard>[
                  MyCard(),
                  MyCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
