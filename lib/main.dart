import 'package:flutter/material.dart';
import 'package:meal_monkey/helper/color.dart';
import 'package:meal_monkey/screens/after_boarding/view.dart';
import 'package:meal_monkey/screens/pin-code/view.dart';
import 'package:meal_monkey/screens/splash/view.dart';

import 'screens/login/view.dart';
import 'screens/on_boarding/view.dart';
import 'screens/reset_password/view.dart';
import 'screens/sign_up/view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: buildMaterialColor(
            Color(0xFFFC6011),
          ),
          platform: TargetPlatform.iOS,
          inputDecorationTheme: InputDecorationTheme(
            contentPadding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            filled: true,
            fillColor: Color(0xFFF2F2F2),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide.none,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28),
              ),
            ),
          ),
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
              side: BorderSide(
                color: Color(0xFFFC6011),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28),
              ),
            ),
          ),
        ),
        home: PageView(
        children: [
        SplashScreen(),
          OnBoardingScreen(),
          AfterBoardingScreen(),
          LoginScreen(),
          SignUpScreen(),
          ResetPassword(),
          PinCode(),

    ]
    ,
    )


    );
  }
}