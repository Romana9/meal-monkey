
import 'package:flutter/material.dart';


class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
          child: Column(
            children: [Padding(
              padding: EdgeInsets.only(top: 60, right:85 , left: 85),
              child: Text(
                'Reset Password',
                style: TextStyle(color: Color(0xFF4A4B4D),fontSize: 30),
              ),


            ),
              SizedBox(height: 12,),
              Text("Please enter your email to receive a\nlink to  create a new password via email",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14,color: Color(0xFF7C7D7E)),
              ),
              SizedBox(height: 60,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 34),
                child: TextFormField(decoration: InputDecoration(labelText: 'Email'),),
              ),
              SizedBox(height: 34,),
              Container(
                  width: double.infinity
                  ,height: 56,
                  padding: EdgeInsets.symmetric(horizontal: 34),
                  child: ElevatedButton(onPressed: (){}, child:Text('Send')))
            ],
          ),
        ),

    );
  }
}
