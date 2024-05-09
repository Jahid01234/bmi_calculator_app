import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BmiLevelText extends StatelessWidget {
  final double? BmiResult;
  const BmiLevelText({super.key,required this.BmiResult});

  @override
  Widget build(BuildContext context) {
    return   Container(
        height: 250,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(0),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade500,
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(4, 4)),
              BoxShadow(
                  color: Colors.white,
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: Offset(-4, -4))
            ]),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                  child: const Text("Here will show result-wise index Level",
                  style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFFFF7F50),fontSize: 15),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Divider(height: 5.0,color: Color(0xFFDE3163),thickness: 3,),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text("Very Severely UnderWeight",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: (BmiResult?.toDouble() ?? 0) >=0 && (BmiResult?.toDouble() ?? 0) <=15.9
                               ? Colors.pinkAccent
                               : Colors.black
                    ),
                  ),
                  const Spacer(),
                  Text("<- 15.9",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: (BmiResult?.toDouble() ?? 0) >=0 && (BmiResult?.toDouble() ?? 0) <=15.9
                            ? Colors.pinkAccent
                            : Colors.black
                    ),
                  ),

                ],
              ),
              Row(
                children: [
                  Text("Severely UnderWeight",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: (BmiResult?.toDouble() ?? 0) >=16.0 && (BmiResult?.toDouble() ?? 0) <=16.9
                            ? Colors.orange
                            : Colors.black
                    ),
                  ),
                  const Spacer(),
                  Text("16.0 - 16.9",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: (BmiResult?.toDouble() ?? 0) >=16.0 && (BmiResult?.toDouble() ?? 0) <=16.9
                            ? Colors.orange
                            : Colors.black
                    ),
                  ),

                ],
              ),
              Row(
                children: [
                  Text("UnderWeight",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: (BmiResult?.toDouble() ?? 0) >=17.0 && (BmiResult?.toDouble() ?? 0) <=18.4
                            ? Colors.orange
                            : Colors.black

                    ),
                  ),
                  const Spacer(),
                  Text("17.0 - 18.4",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: (BmiResult?.toDouble() ?? 0) >=17.0 && (BmiResult?.toDouble() ?? 0) <=18.4
                            ? Colors.orange
                            : Colors.black
                    ),
                  ),

                ],
              ),
              Row(
                children: [
                  Text("Normal",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: (BmiResult?.toDouble() ?? 0) >=18.5 && (BmiResult?.toDouble() ?? 0) <=24.9
                            ? Colors.green
                            : Colors.black
                    ),
                  ),
                  const Spacer(),
                  Text("18.5 - 24.9",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: (BmiResult?.toDouble() ?? 0) >=18.5 && (BmiResult?.toDouble() ?? 0) <=24.9
                            ? Colors.green
                            : Colors.black
                    ),
                  ),

                ],
              ),
              Row(
                children: [
                  Text("OverWeight",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: (BmiResult?.toDouble() ?? 0) >=25.0 && (BmiResult?.toDouble() ?? 0) <=29.9
                            ? Colors.deepOrange
                            : Colors.black
                    ),
                  ),
                  const Spacer(),
                  Text("25.0 - 29.9",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: (BmiResult?.toDouble() ?? 0) >=25.0 && (BmiResult?.toDouble() ?? 0) <=29.9
                            ? Colors.deepOrange
                            : Colors.black
                    ),
                  ),

                ],
              ),
              Row(
                children: [
                  Text("Obese Class-|",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: (BmiResult?.toDouble() ?? 0) >=30.0 && (BmiResult?.toDouble() ?? 0) <=34.9
                            ? Colors.teal
                            : Colors.black
                    ),
                  ),
                  const Spacer(),
                  Text("30.0 - 34.9",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: (BmiResult?.toDouble() ?? 0) >=30.0 && (BmiResult?.toDouble() ?? 0) <=34.9
                            ? Colors.teal
                            : Colors.black
                    ),
                  ),

                ],
              ),
              Row(
                children: [
                  Text("Obese Class-||",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: (BmiResult?.toDouble() ?? 0) >=35.0 && (BmiResult?.toDouble() ?? 0) <=39.9
                            ? Colors.lightBlueAccent
                            : Colors.black
                    ),
                  ),
                  const Spacer(),
                  Text("35.0 - 39.9",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: (BmiResult?.toDouble() ?? 0) >=35.0 && (BmiResult?.toDouble() ?? 0) <=39.9
                            ? Colors.lightBlueAccent
                            : Colors.black
                    ),
                  ),

                ],
              ),
              Row(
                children: [
                  Text("Obese Class-|||",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: (BmiResult?.toDouble() ?? 0) >=40.0 && (BmiResult?.toDouble() ?? 0) <=45.0
                            ? Colors.orangeAccent
                            : Colors.black
                    ),
                  ),
                  const Spacer(),
                  Text(">=45.0",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: (BmiResult?.toDouble() ?? 0) >=40.0 && (BmiResult?.toDouble() ?? 0) <=45.0
                            ? Colors.orangeAccent
                            : Colors.black
                    ),
                  ),

                ],
              ),
            ],
          ),
        )

    );
  }
}
