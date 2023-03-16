import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

final myTheme = ThemeData(
  fontFamily: 'pro',
  brightness: Brightness.dark,
  primaryColor: Colors.lightBlue[800],
  iconTheme: IconThemeData(color: Color.fromARGB(255, 0, 0, 0), size: 24),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(Colors.white),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),
  ),
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: TextStyle(
      fontSize: 50,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      fontSize: 60.0,
      fontWeight: FontWeight.bold,
    ),
    titleSmall: TextStyle(
      fontFamily: 'pro',
      fontSize: 20.0,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w200,
      color: Color.fromARGB(255, 63, 61, 61),
    ),
    titleMedium: TextStyle(
      fontFamily: 'pro',
      fontSize: 30.0,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      color: Color.fromARGB(255, 255, 255, 255),
    ),
    titleLarge: TextStyle(
      fontSize: 40.0,
      fontStyle: FontStyle.normal,
      color: Color.fromARGB(255, 247, 236, 236),
      fontWeight: FontWeight.w900,
    ),
    bodySmall: TextStyle(
        fontSize: 20.0,
        fontFamily: 'pro',
        color: Color.fromARGB(255, 0, 0, 0),
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold),
    //wireless
    bodyMedium: TextStyle(
        fontSize: 60.0,
        fontFamily: 'pro',
        color: Color.fromARGB(255, 0, 0, 0),
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold),
    //Headphones
    bodyLarge: TextStyle(
        fontFamily: 'pro',
        fontSize: 190,
        color: Color.fromARGB(255, 255, 255, 255),
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold),
  ),
  accentColor: Colors.blue,
  appBarTheme: AppBarTheme(
    iconTheme: IconThemeData(color: Colors.black),
    backgroundColor: Colors.white,
  ),
  cardTheme: CardTheme(
    color: Color.fromARGB(255, 243, 238, 238),
  ),
);
