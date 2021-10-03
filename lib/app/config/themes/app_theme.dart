import 'package:flutter/material.dart';

/// all custom application theme
class AppTheme {
  /// default application theme
  static ThemeData get basic => ThemeData(
        primaryColor: Colors.redAccent,
        primarySwatch: Colors.red,
        canvasColor: Colors.white,
        appBarTheme: AppBarTheme(backgroundColor: Colors.white),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Color.fromRGBO(246, 246, 246, 1),
        ),
        iconTheme: IconThemeData(
          color: Color.fromRGBO(187, 193, 202, 1),
        ),
      );

  // you can add other custom theme in this class like  light theme, dark theme ,etc.

  // example :
  // static ThemeData get light => ThemeData();
  // static ThemeData get dark => ThemeData();

  // Suggestion: to make managing themes easier, create a separate class for each theme.
}
