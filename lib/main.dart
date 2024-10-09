import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BMICalculator(),
    );
  }
}


class BMICalculator extends StatefulWidget {
  const BMICalculator({Key? key});

  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}


class _BMICalculatorState extends State<BMICalculator> {

  int age = 0;
  var weight = 0;
  var height = 140;  
  String gender = "male";
  String bmiResult = "Normal";
  String _bmi = "00";
  
  
  
    


  void calculateBMI() {
    double heightInMeters = height / 100;
    double bmi = weight / (heightInMeters * heightInMeters);
    String category;
    
    if (bmi <= 18.4) {
      category = "Underweight";
    } else if (bmi <= 24.9) {
      category = "Normal";
    } else if (bmi <= 39.9) {
      category = "Overweight";
    } else {
      category = "Obese";
    }

    setState(() {
      bmiResult = category;
      _bmi = bmi.toStringAsFixed(1);
    });
  }

  void updateGender(String selectedGender){
    setState(() {
      gender = selectedGender;
    });
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff31363F),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
          Container(
            margin: const EdgeInsets.only(top: 54),
            child: const Text(
              "BMI APP",
              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 48,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(
              margin: const EdgeInsets.only(top: 50),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: const Color(0xffFFFFFF)),
              width: 146,
              //height: 141,
              child: Column(children:[
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const Text("Age", style: TextStyle(color: Color(0xff000000), fontSize: 25, fontWeight: FontWeight.w700),),
                ),
                const SizedBox(height: 10,),
                Text("$age", style: const TextStyle(color: Color(0xff000000), fontSize: 25, fontWeight: FontWeight.w700),),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.only(right: 10),
                          child:
                          IconButton(
                            icon: const Icon(Icons.add, color: Color(0xff000000),size: 30),
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                          )
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.remove, color: Color(0xff000000),size: 30),
                        onPressed: () {
                          setState(() {
                            age--;
                          });
                        },
                      )
                    ],
                  ),
                )
              ],),
              ),
              const SizedBox(width: 20,),
              Container(
              margin: const EdgeInsets.only(top: 50),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: const Color(0xffFFFFFF)),
              width: 146,
              //height: 141,
              child: Column(children:[
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const Text("Weight(KG)", style: TextStyle(color: Color(0xff000000), fontSize: 24, fontWeight: FontWeight.w700),),
                ),
                const SizedBox(height: 10,),
                Text("$weight", style: const TextStyle(color: Color(0xff000000), fontSize: 25, fontWeight: FontWeight.w700),),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        child:
                        IconButton(
                          icon: const Icon(Icons.add, color: Color(0xff000000),size: 30),
                          onPressed: () {
                            setState(() {
                              weight++;
                            });
                          },
                        )
                      ),
                      IconButton(
                        icon: const Icon(Icons.remove, color: Color(0xff000000),size: 30),
                        onPressed: () {
                          setState(() {
                            weight--;
                          });
                        },
                      )
                    ],
                  ),
                )
              ],),
              ),
            ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: const Color(0xffFFFFFF)),
              width: 302,
              //height: 141,
              child: Column(children: [
                Container(
                  margin: const EdgeInsets.only(left: 29),
                  child: const Text("Height(cm)", style: TextStyle(color: Color(0xff000000), fontSize: 25, fontWeight: FontWeight.w700),)
                ),
                Row(children: [
                  Container(
                    margin: const EdgeInsets.only(left: 60),
                    child: Text("$height", style: const TextStyle(color: Color(0xff000000), fontSize: 64, fontWeight: FontWeight.w700),)
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                      margin: const EdgeInsets.only(left: 70),
                      child: IconButton(
                        icon: const Icon(Icons.add, color: Color(0xff000000),size: 30),
                        onPressed: () {
                          setState(() {
                            height++;
                          });
                        },
                      ),
                    ),
                    Container(
                    margin: const EdgeInsets.only(left: 70),
                      child: IconButton(
                        icon: const Icon(Icons.remove, color: Color(0xff000000),size: 30),
                        onPressed: () {
                          setState(() {
                            height--;
                          });
                        },
                    ),
                    )
                  ],
                )
              ],
            ),
                

            ],),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: const  Color(0xffFFFFFF)),
              width: 302,
              height: 198,
              child: Column(children: [
                Container(
                  margin: const EdgeInsets.only(),
                  child: const Text("Gender" ,style: TextStyle(color: Color(0xff000000), fontSize: 25, fontWeight: FontWeight.w700),),
              ),
                Row(children: [
                  Container(
                    margin: const EdgeInsets.only(left: 50 , top: 20),
                    child: const Text("I'm a ",style: TextStyle(color: Color(0xff000000), fontWeight: FontWeight.w700,fontSize: 51), ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: IconButton( icon: Icon(Icons.male, color: gender == 'male'? const Color(0xff76ABAE):const Color(0xff000000),size: 40,),
                      onPressed: () => updateGender('male')
                      ),
                      ),
                    
                    Container(
                    margin: const EdgeInsets.only(left: 20),
                      child: IconButton( icon: Icon(Icons.female, color: gender == 'female'? Colors.pink:const Color(0xff000000), size: 40,),
                      onPressed: () => updateGender('female')
                      ),
                      
                    )
                    ],
                  )
                ],)
              ],),
              ),
              Container(
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: const Color(0xffFFFFFF)),
              width: 302,
              //height: 141,
              child: Column(children: [
                const Text("Your Result is", style: TextStyle(color: Color(0xff000000), fontSize: 20, fontWeight: FontWeight.w700),),
                Text(_bmi, style: const TextStyle(color: Color(0xff000000), fontSize: 64, fontWeight: FontWeight.w700),),
                Text(bmiResult, style: const TextStyle(color: Color(0xff000000), fontSize: 20, fontWeight: FontWeight.w700),),
              ],),
              ),
              Container(
              margin: const EdgeInsets.only(top: 15, bottom: 30),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: const  Color(0xffFFFFFF)),
              width: 139,
              height: 42,
              child: ElevatedButton(
                onPressed: calculateBMI,
                child: const Text("Calculate", style: TextStyle(color:  Color(0xff000000), fontSize: 16,fontWeight: FontWeight.w700, ),),
              ),
              ),  
          ],),
      ),  
    );
  }   
}