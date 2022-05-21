
import 'package:flutter/material.dart';
import 'package:meal_monkey/screens/reset_password/view.dart';
import 'package:meal_monkey/screens/sign_up/view.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 60, right: 150, left: 150),
                child: Text(
                  'Login',
                  style: TextStyle(color: Color(0xFF4A4B4D), fontSize: 25),
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Add your details to login',
                style: TextStyle(fontSize: 14, color: Color(0xFF7C7D7E)),
              ),
              SizedBox(height: 36),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 34),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText:
                        'Your Email',

                  ),
                ),
              ),
              SizedBox(height: 28),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 34),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText:
                        'password'
                    ,
                  ),
                ),
              ),
              SizedBox(height: 28),
              Container(
                width: double.infinity,
                height: 56,
                padding: EdgeInsets.only(right: 34, left: 34),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Login'
                   ,
                  ),
                ),
              ),
              SizedBox(height: 24),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'forgot Your Password'
                     ,
                      style:
                      TextStyle(fontSize: 14, color: Color(0xFF7C7D7E)))),
              // 'Forgot your password?',
              // style: TextStyle(fontSize: 14, color: Color(0xFF7C7D7E)),

              SizedBox(height: 25),
              Text(
                'or Login With'
                ,
                style: TextStyle(fontSize: 14, color: Color(0xFF7C7D7E)),
              ),
              SizedBox(height: 46),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  width: double.infinity,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Color(0xFF367FC0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icons/fb.png'
                      ,
                      ),
                      SizedBox(width: 32.4),
                      Text(
                        'login With Facebook'
                        ,
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 28),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  width: double.infinity,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Color(0xFFDD4B39),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/google.png',
                      ),
                      SizedBox(width: 32.4),
                      Text(
                        'login With Google'
                        ,
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an Account? ",
                        style: TextStyle(fontSize: 14, color: Color(0xFF7C7D7E)),
                      ),
                      TextButton(onPressed: (){}, child: Text('SignUp',),)

                    ],
                  )

                ],
              )
            ],
          ),
        ),

    );
  }
}
