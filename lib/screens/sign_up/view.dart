
import 'package:flutter/material.dart';

import 'package:meal_monkey/screens/login/view.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 60, right: 150, left: 150),
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: Color(0xFF4A4B4D), fontSize: 20,),
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Add your details to sign up',
                style: TextStyle(fontSize: 14, color: Color(0xFF7C7D7E)),
              ),
              SizedBox(height: 36),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 34),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Name',
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 34),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Mobile No',
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 34),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Address',
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 34),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',

                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 34),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Container(
                width: double.infinity,
                height: 56,
                padding: EdgeInsets.symmetric(horizontal: 34),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Sign Up',
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an Account? ",
                    style: TextStyle(fontSize: 14, color: Color(0xFF7C7D7E)),
                  ),
                  TextButton(onPressed: (){}, child: Text('Login',),)

                ],
              )
            ],
          ),
        )
    );
  }
}

