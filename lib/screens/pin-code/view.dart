import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
class PinCode extends StatefulWidget {
  const PinCode({Key? key}) : super(key: key);

  @override
  State<PinCode> createState() => _PinCodeState();
}

class _PinCodeState extends State<PinCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(padding:EdgeInsets.only(top: 60, right:85 , left: 85),child: Text('We have sent an OTP \n      to your Mobile', style: TextStyle(color: Color(0xFF4A4B4D),fontSize: 20),)),
            SizedBox(height: 19,),
            Text('Please check your mobile number 071*****12 \n continue to reset your password',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14,color: Color(0xFF7C7D7E)),
            ),
            SizedBox(height: 60,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 34),
              child: PinCodeTextField(
                pinTheme: PinTheme(

                  inactiveFillColor: const Color(0xffF2F2F2),
                  selectedColor: const Color(0xffF2F2F2),
                  disabledColor: const Color(0xffF2F2F2),
                  activeColor: const Color(0xffF2F2F2),
                  inactiveColor: const Color(0xffF2F2F2),
                  borderWidth: 1,
                  selectedFillColor: const Color(0xffF2F2F2),
                  errorBorderColor: const Color(0xffF2F2F2),
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(12),
                  fieldHeight: 56,
                  fieldWidth: 56,
                  activeFillColor:const Color(0xffF2F2F2) ,
                ),

                enableActiveFill: true,
                backgroundColor: Colors.white,
                blinkWhenObscuring: true,
                obscuringCharacter: "*",
                obscureText: true,
                length: 4,
                // backgroundColor: const Color(0xff707070),
                onChanged: (String value) {},
                appContext: context,
              ),
            ),
            SizedBox(height: 34,),
            Container(
                width: double.infinity
                ,height: 56,
                padding: EdgeInsets.symmetric(horizontal: 34),
                child: ElevatedButton(onPressed: (){}, child:Text('Next'))),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't Recive? ",
                  style: TextStyle(fontSize: 14, color: Color(0xFF7C7D7E)),
                ),
                TextButton(onPressed: (){}, child: Text('Click Here',), )

              ],
            )

          ],
        ),
      ),
    );
  }
}

