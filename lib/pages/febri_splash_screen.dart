import 'dart:async';
import 'package:flutter/material.dart';

import '../auts/febri_login.dart';


class Febri_SplashScreen extends StatefulWidget {
  const Febri_SplashScreen({super.key});

  @override
  State<Febri_SplashScreen> createState() => _Febri_SplashScreenState();
}

class _Febri_SplashScreenState extends State<Febri_SplashScreen> {
  late Timer t;

  @override
  void initState() {
    t = Timer.periodic(
      const Duration(seconds: 3),
          (timer) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => FebriLogin()),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
         color: Color(0xFF0019A7)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/ruokff.png'),
            Text(
              'MeleTube',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white70,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
