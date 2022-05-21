import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                ('assets/images/bg.jpg')
                 ),
            ),
          ),
          child: Center(
            child: Image.asset(
              'assets/images/Logo.png',
              width: 218,
              height: 185,
            ),
          ),
        ),

    );
  }
}