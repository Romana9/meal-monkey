import 'package:flutter/material.dart';
import 'package:meal_monkey/screens/after_boarding/view.dart';

import 'controller.dart';


class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = OnBoardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(
          padding: const EdgeInsets.all(34),
          child: ListView(
            children: [
              SizedBox(
                height: 80,
              ),
              Container(
                height: 294,
                width: 225,
                child: PageView(
                  onPageChanged: (value) {
                    controller.changeController(value);
                    setState(() {});
                  },
                  children: List.generate(
                    controller.images.length,
                        (index) => Image.asset(
                      "assets/images/on_boarding_screen/" +
                          controller.images[controller.currentIndex],
                      width: 225.44,
                      height: 294,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  controller.images.length,
                      (index) => Container(
                    margin: EdgeInsetsDirectional.only(start: 5),
                    height: 8,
                    width: index == controller.currentIndex ? 8 : 8,
                    decoration: BoxDecoration(
                      // shape: BoxShape.circle,
                      borderRadius: BorderRadius.circular(25),
                      color: Color(index == controller.currentIndex
                          ? 0xffFC6011
                          : 0xffD6D6D6),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                controller.label[controller.currentIndex],
                style: TextStyle(fontSize: 28, color: Color(0xff4A4B4D)),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 33,
              ),
              Text(
                controller.hint[controller.currentIndex],
                style: TextStyle(fontSize: 13, color: Color(0xff7C7D7E)),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              controller.currentIndex == 2
                  ? Padding(
                padding: EdgeInsets.symmetric(horizontal: 34),
                child: Container(
                  width: 307,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  AfterBoardingScreen()));
                    },
                    child: Text('Finish',
                    ),
                  ),
                ),
              )
                  : SizedBox.shrink()
            ],
          ),
        ),

    );
  }
}
