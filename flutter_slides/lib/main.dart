import 'package:flutter_slides/slides/base_slide.dart';
import 'package:flutter_slides/theme/text_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: false).copyWith(
        textTheme: baseFont,
        primaryColor: Colors.black,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData.dark(useMaterial3: false).copyWith(
        textTheme: baseFont,
        primaryColor: Colors.white,
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
      home: const BaseSlide(),
    );
  }
}
