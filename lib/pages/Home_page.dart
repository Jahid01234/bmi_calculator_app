import 'dart:math';
import 'package:flutter/material.dart';
import 'package:bmi_calculator_app/custom_design/bmilevel_text.dart';
import 'package:bmi_calculator_app/custom_design/calculated_button.dart';
import 'package:bmi_calculator_app/custom_design/image_container.dart';
import 'package:bmi_calculator_app/custom_design/input_decoration.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController ageController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController feetController = TextEditingController();
  final TextEditingController inchController = TextEditingController();

  double? bmiResult;

  @override
  void dispose() {
    ageController.clear();
    weightController.clear();
    feetController.clear();
    inchController.clear();
    super.dispose();
  }

  // BMi Calculation functionality part here
  void bmiCalculation(){
    // convert 5.5(5 feet, 5inch) into meter
    // double? meter = (( ft * 12) + inch) *  0.0524;
    // bmi Law = weight/(meter)^2

    double? feet = double.tryParse(feetController.text) ?? 0;
    double? inch = double.tryParse(inchController.text) ?? 0;

    // convert feet/ inch to meter
    double? meter = (feet * 12 + inch) *  0.0254;
    double? weight = double.tryParse(weightController.text) ?? 0;

    // Apply the BMI Formula
    double? result = weight / (pow(meter, 2) ?? 1);

    setState(() {
      bmiResult = result;
    });
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text(
          "BMI Calculator",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  ageController.clear();
                  weightController.clear();
                  feetController.clear();
                  inchController.clear();
                  bmiResult = null;
                });
              },
              icon: Icon(Icons.refresh_outlined, color: Colors.white)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert_outlined, color: Colors.white)),
        ],
      ),
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              // The 1st Male/ Female selection section part
              ImageContainer(),
              const SizedBox(
                height: 30,
              ),

              // The 2nd age/ weight texfield section part
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyTextField(
                    controller:ageController,
                    hintTex: "Enter Age",
                  ),
                  MyTextField(
                    controller: weightController,
                    hintTex: "Enter Weight",
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),

              // The 3rd height feet/ inch texfield section part
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyTextField(
                    controller: feetController,
                    hintTex: "Enter Ht(feet)",
                  ),
                  MyTextField(
                    controller: inchController,
                    hintTex: "Enter Ht(inch)",
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),

              // The 4th pi chart section part
              SizedBox(
                height: 300,
                width: 250,
                child: SfRadialGauge(
                    axes: <RadialAxis>[
                      RadialAxis(
                          minimum: 15,
                          maximum: 40,
                          ranges: <GaugeRange>[
                                 GaugeRange(startValue: 0, endValue: 18, color: Colors.green),
                                 GaugeRange(startValue: 18, endValue: 25, color: Colors.orange),
                                 GaugeRange(startValue: 25, endValue: 40, color: Colors.red)
                             ],
                          pointers: <GaugePointer>[
                                 NeedlePointer(value: bmiResult ?? 0)
                              ],

                          annotations: <GaugeAnnotation>[
                                GaugeAnnotation(
                                   widget: Container(
                                    child: Text(bmiResult?.toStringAsFixed(1) ?? '0.0',
                                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.lightBlue))),
                         angle: 90,
                         positionFactor: 0.5
                                )
                        ]
                      )
                  ]
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // The 5th Calculate the button section part
              MyButton(
                onPressed: () {
                  setState(() {
                    // Calculate BMI when button is pressed
                     bmiCalculation();
                  });
                },
              ),
              const SizedBox(
                height: 30,
              ),

              // The 6th the bmi level  section part
              BmiLevelText(BmiResult: bmiResult,)

            ],
          ),
        ),
      ),
    );
  }
}
