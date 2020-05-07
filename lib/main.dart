import 'package:flutter/material.dart';

import 'home_page.dart';


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
