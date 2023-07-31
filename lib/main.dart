import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:quran/quran.dart' as quran;

import 'home/dictionary.dart';
import 'home/homepage.dart';

void main() {
  runApp(QuranApp());
}

class QuranApp extends StatefulWidget {
  @override
  _QuranAppState createState() => _QuranAppState();
}

class _QuranAppState extends State<QuranApp> {
  int selectedSurahIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        supportedLocales: [
          Locale('en', ''), // English
          Locale('ar', ''), // Arabic
        ],
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
      home:homepage()
    );
  }
}
