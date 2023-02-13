import 'package:flutter/material.dart';

class MyTheme{
static final lightTheme=ThemeData(
  primaryColor:Color.fromRGBO(57, 165, 82, 1.0),
  scaffoldBackgroundColor: Colors.transparent,
  appBarTheme: AppBarTheme(
    color: Color.fromRGBO(57, 165, 82, 1.0)
  ),
  textTheme: TextTheme(
    headline6:TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 22,
      color: Colors.black
    )
  )

);
}