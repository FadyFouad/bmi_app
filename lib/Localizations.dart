import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
//import 'package:bmiapp/l10n/messages_all.dart';
///l10n/messages_all.dart'

///****************************************************
///*** Created by Fady Fouad on 06-May-20 at 23:36.***
///****************************************************

class DemoLocalizations {
  DemoLocalizations(this.localeName);

//  static Future<DemoLocalizations> load(Locale locale) {
//    final String name =
//        locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
//    final String localeName = Intl.canonicalizedLocale(name);
////    return initializeMessages(localeName).then((_) {
//      return DemoLocalizations(localeName);
//    });
//  }

  static DemoLocalizations of(BuildContext context) {
    return Localizations.of<DemoLocalizations>(context, DemoLocalizations);
  }

  final String localeName;

  String get title {
    return Intl.message(
      'Hello World',
      name: 'title',
      desc: 'Title for the Demo application',
      locale: localeName,
    );
  }
}
