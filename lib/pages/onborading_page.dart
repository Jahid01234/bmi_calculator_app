import 'package:bmi_calculator_app/pages/Home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  final introKey = GlobalKey<IntroductionScreenState>();

  final pageDecoration = const PageDecoration(
    pageColor: Colors.white,
    titleTextStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),
    bodyTextStyle: TextStyle(fontSize: 15,),
    bodyPadding: EdgeInsets.fromLTRB(16, 16, 16, 16),
    imagePadding: EdgeInsets.all(10)
  );


  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: introKey,
      pages: [
        // The 1st pageView Model
        PageViewModel(
          title: "What is BMI? ",
          body: " Body mass index or BMI can be defined as a statistic calculated from an individual's height and weight. The value of BMI is calculated by dividing the individual's current mass of the body by the square value of the person's body height amount and is given in kilos per square metre unit (kg/m2).",

          image:ClipRRect(
            borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/images/onboarding1.png",fit: BoxFit.fill,height: 280,width: 500,)),
          decoration: pageDecoration
        ),

        // The 2nd  pageView Model
        PageViewModel(
          title: "How to Calculate BMI?",
          body: " The Body Mass Index (BMI) helps in calculating the height-to-weight ratio of a person. The score determines if a person is at his/her healthy weight or needs to shed or gain more kilos. A BMI calculator is widely used as a general tool to assess if a person has a healthy body weight proportional to their height.",
          image:ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/images/onboarding2.png",fit: BoxFit.fill,height: 280,width: 500,)),
          decoration: pageDecoration
        ),

        // The 3rd  pageView Model
        PageViewModel(
          title: "Why is it important to know both BMI ?",
          body: " Body mass index (BMI) and body fat are both measurements used to determine a person's level of personal fitness and gauge their risk for conditions such as heart disease and diabetes.",
          image:ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/images/onboarding3.png",fit: BoxFit.fill,width: 500,)),
          decoration: pageDecoration,
          footer: _buildFooterButton()
        )

      ],

      showSkipButton: false,
      showDoneButton: false,
      showBackButton: true,

      back:const  Text("Back",style:TextStyle(fontWeight: FontWeight.w600,color: Color(0xFFDB3022))),
      next: const Text("Next",style:TextStyle(fontWeight: FontWeight.w600,color: Color(0xFFDB3022))),

      onDone: (){},
      onSkip: (){},
      dotsDecorator:  DotsDecorator(
        size: Size.square(10.0),
        activeSize: Size(20,10),
        activeColor: Colors.orange,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        )
      ),
    );
  }

  // create custom buildFooterButton
  Widget _buildFooterButton() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
        },
        child: Container(
          height: 50,
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade500,
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(2, 2)),
                BoxShadow(
                    color: Colors.white,
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(-3, -3))
              ]
           ),
          child: Center(
            child: Text("Let's Go",style: TextStyle(color: Colors.black,fontSize: 16),),
          ),
        ),
      ),
    );
  }
}
