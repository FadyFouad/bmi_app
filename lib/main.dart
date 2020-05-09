import 'package:bmiapp/Localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'constaants.dart';
import 'screens/home_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    Locale myLocale = Localizations.localeOf(context);
    return MaterialApp(
//      locale: Locale("en"),
      supportedLocales: [
        const Locale('en', 'US'), // English
        const Locale('ar', 'EG'), // Arabic
      ],
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      // Returns a locale which will be used by the app
      localeResolutionCallback: (locale, supportedLocales) {
        // Check if the current device locale is supported
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale.languageCode &&
              supportedLocale.countryCode == locale.countryCode) {
            return supportedLocale;
          }
        }
        // If the locale of the device is not supported, use the first one
        // from the list (English, in this case).
        return supportedLocales.first;
      },
      title: 'myLocale.toString()',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff000000),
        accentColor: Color(0xffEB1555),
        scaffoldBackgroundColor: Color(0xff212121),
      ),
      home: MyHomePage(title: kTitle),
    );
  }
}
