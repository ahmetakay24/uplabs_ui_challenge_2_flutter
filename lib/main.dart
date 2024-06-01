import 'package:flutter/material.dart';
import 'package:uplabs_ui_challenge_2_flutter/screens/book_screen/book_screen_view.dart';
import 'package:uplabs_ui_challenge_2_flutter/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: AppThemeData(context).themeData,
      home: BookScreen(),
    );
  }
}
