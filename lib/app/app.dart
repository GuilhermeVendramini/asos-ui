import 'package:asos_ui/app/screens/intro.dart';
import 'package:asos_ui/utils/navigationBar.dart';
import 'package:asos_ui/utils/portraitScreen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    portraitScreen();
    navigationBar();

    return MaterialApp(
      title: 'ASOS UI',
      theme: ThemeData(
        fontFamily: 'FuturaPT',
        primarySwatch: Colors.grey,
        appBarTheme: AppBarTheme(
          color: Colors.white,
        ),
      ),
      home: IntroScreen(),
    );
  }
}
