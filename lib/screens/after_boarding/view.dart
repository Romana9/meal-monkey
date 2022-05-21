import 'package:flutter/material.dart';

class AfterBoardingScreen extends StatefulWidget {
  const AfterBoardingScreen({Key? key}) : super(key: key);

  @override
  State<AfterBoardingScreen> createState() => _AfterBoardingScreenState();
}

class _AfterBoardingScreenState extends State<AfterBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 500,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/top_shape.jpg',
                    width: double.infinity,
                    height: 382,
                    fit: BoxFit.fill,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      'assets/images/Logo.png',
                      width: 218,
                      height: 185,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 44,
            ),
            Text(
              'Discover the best foods from over 1,000\n restaurants and fast delivery to your doorstep',
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xFF7C7D7E)),
            ),
            SizedBox(
              height: 36,
            ),
            Container(
              width: 307,
              height: 56,
              padding: EdgeInsets.only(right: 34, left: 34),
              child: ElevatedButton(
                onPressed: () {

                },
                child: Text(
                  'Login',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 307,
              height: 56,
              padding: EdgeInsets.only(right: 34, left: 34),
              child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  'Create An Account'

                ),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
