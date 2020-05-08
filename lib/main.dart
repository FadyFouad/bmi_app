import 'package:flutter/material.dart';

import 'constaants.dart';
import 'screens/home_page.dart';


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
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff000000),
        accentColor: Color(0xffEB1555),


      ),
      home: MyHomePage(title: kTitle),
    );
  }
}
