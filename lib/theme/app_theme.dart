import 'package:flutter/material.dart';
import 'package:uplabs_ui_challenge_2_flutter/core/core_utilities.dart';

class AppThemeData {
  final BuildContext context;

  AppThemeData(this.context);

  ThemeData get themeData => ThemeData(
        scaffoldBackgroundColor: AppColors().darkBlueColor,
        appBarTheme: AppBarTheme(color: AppColors().darkBlueColor),
        textTheme: const TextTheme(
            displaySmall: TextStyle(color: Colors.white),
            bodyMedium: TextStyle(color: Colors.white),
            bodySmall: TextStyle(color: Colors.white70),
            headlineMedium: TextStyle(color: Colors.white)),
        inputDecorationTheme: InputDecorationTheme(
          border: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          disabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.white70)),
          enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.white70)),
          focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.white70)),
          labelStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white70),
        ),
        textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.white70),
      );
}
