import 'package:flutter/material.dart';
import 'package:ui_plant_app/screens/home/home_screen.dart';
import 'package:ui_plant_app/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: kPrimaryColor
        ),
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: kTextColor
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
    );
  }
}
