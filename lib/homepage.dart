// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int currentStep = 0;

    List<Step> getSteps() => [
          Step(
            title: Text(
              "Title 1",
              style: TextStyle(color: Colors.white),
            ),
            content: Text(
              "Content 1",
              style: TextStyle(color: Colors.white),
            ),
            isActive: currentStep >= 0,
          ),
          Step(
            title: Text(
              "Title 2",
              style: TextStyle(color: Colors.white),
            ),
            content: Text(
              "Content 2",
              style: TextStyle(color: Colors.white),
            ),
            isActive: currentStep >= 1,
          ),
          Step(
            title: Text(
              "Title 3",
              style: TextStyle(color: Colors.white),
            ),
            content: Text(
              "Content 3",
              style: TextStyle(color: Colors.white),
            ),
            isActive: currentStep >= 2,
          ),
        ];

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 56, 56, 56),
      appBar: AppBar(
        title: Text("Bottom Nav"),
        backgroundColor: Color.fromARGB(255, 44, 44, 44),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stepper(
            steps: getSteps(),
            currentStep: currentStep,
            onStepCancel: () {
              setState(() {
                if (currentStep == 0) {
                  currentStep = currentStep;
                } else {
                  currentStep--;
                }
              });
            },
            onStepContinue: () {
              setState(() {
                if (currentStep == 2) {
                  currentStep = currentStep;
                } else {
                  currentStep += 1;
                  print(currentStep);
                }
              });
            },
            // onStepTapped: (int currentStep) {
            //   setState(() {
            //     print(currentStep);
            //     currentStep = currentStep;
            //   });
            // },
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromARGB(255, 58, 58, 58),
        color: Color.fromARGB(255, 255, 111, 0),
        animationDuration: Duration(milliseconds: 300),
        items: [
          Icon(
            Icons.home,
            color: Colors.white,
            size: 30,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
            size: 30,
          ),
          Icon(
            Icons.mail,
            color: Colors.white,
            size: 30,
          ),
          Icon(
            Icons.upcoming,
            color: Colors.white,
            size: 30,
          ),
        ],
        onTap: (index) {
          print(index);
        },
      ),
    );
  }
}
