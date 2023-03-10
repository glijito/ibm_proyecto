import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary= Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(

    primaryColor: Colors.indigo,
    appBarTheme: const AppBarTheme(
      color:Colors.indigo,
      elevation: 0
    ),
  ) ;

  static final ThemeData darkTheme = ThemeData.light().copyWith(

    primaryColor: Colors.indigo,
    appBarTheme: const AppBarTheme(
        color:Colors.indigo,
        elevation: 0
    ),

    textButtonTheme: TextButtonThemeData(
      style:TextButton.styleFrom(primary:primary)
    ),

    scaffoldBackgroundColor: Colors.black
  ) ;

}