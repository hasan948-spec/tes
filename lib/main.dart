import 'package:flutter/material.dart';
import 'package:tes/pages/dashboard_page.dart';
import 'package:tes/pages/home_page.dart';
import 'package:tes/pages/febri_splash_screen.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: Febri_SplashScreen(),);
  }
}
