import 'dart:async';
import 'package:bmi_calculator_app/pages/onborading_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    Timer(Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>OnBoardingScreen()));
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
            Align(
              alignment: Alignment.center,
                child: Image.asset("assets/images/img_2.png")
            ),
            const SizedBox(height: 40,),
            Text("BMI  CALCULATOR  APP", style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold,fontSize: 18),),
            const SizedBox(height: 10),
            CircularProgressIndicator(color:Colors.orange[200])
          ],
        ),
      ),

    );
  }
}
