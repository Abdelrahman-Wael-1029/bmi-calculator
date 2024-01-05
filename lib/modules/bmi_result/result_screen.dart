import 'package:bmi_calculator/models/bmi_model/bmi_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResultScreen extends StatelessWidget {
  double getResult(BmiModel bmiModel) {
    double result =
        bmiModel.weight / ((bmiModel.height / 100) * (bmiModel.height / 100));
    return double.parse(result.toStringAsFixed(2));
  }

  ResultScreen({
    super.key,
    required this.bmiModel,
  })  : age = bmiModel.age,
        height = bmiModel.height,
        gender = bmiModel.gender,
        weight = bmiModel.weight {
    result = getResult(bmiModel);
  }
  BmiModel bmiModel;
  final int height;
  final int weight;
  final int age;
  final String gender;
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
