import 'package:flutter/material.dart';
import 'package:uplabs_ui_challenge_2_flutter/screens/main_screen/main_screen_view.dart';
import 'package:uplabs_ui_challenge_2_flutter/screens/main_screen/widgets/text_fields/main_screen_text_fields.dart';
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
      home: MainScreen(),
    );
  }
}
