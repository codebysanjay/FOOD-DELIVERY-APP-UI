import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/Screen/homeScreen.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FOODKART',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Comfortaa',
          scaffoldBackgroundColor: Colors.white,
          primaryColor: kPrimaryColour,
          textTheme: TextTheme(
              bodyText1: TextStyle(color: kSecondaryColour),
              bodyText2: TextStyle(color: kSecondaryColour))),
      home: HomeScreen(),
    );
  }
}
