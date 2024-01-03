import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResultScreen extends StatelessWidget {
  ResultScreen(
      {super.key,
      required this.height,
      required this.weight,
      required this.age,
      required this.gender}){
        // result by 2 decimal after point
        result = weight / ((height / 100) * (height / 100));
        result = double.parse(result.toStringAsFixed(2));
      }
  int height;
  int weight;
  int age;
  String gender;
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        title: const Text(
          "Result",
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Gender: $gender",
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Height: $height",
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Weight: $weight",
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Age: $age",
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                ),
              ),

              Text(
                "BMI: $result",
                style: const TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
              ),

              
            ],
          ),
        ),
      ),
    );
  }
}
