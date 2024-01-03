import 'package:bmi_calculator/result_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeScreen();
  }
}

class _HomeScreen extends State {
  bool isMale = true;
  int height = 80;
  int weight = 50;
  int age = 28;
  final int minWeight = 20;
  final int minAge = 8;
  @override
  Widget build(BuildContext context) {
    final double heightScreen = MediaQuery.of(context).size.height;
    final double sizeText = heightScreen > 600 ? 25 : 20;
    final double sizeText2 = heightScreen > 600 ? 20 : 15;
    final double sizeIcon = heightScreen > 600 ? 70 : 40;
    final double sizeIcon2 = heightScreen > 600 ? 40 : 20;
    final double sizeBox = heightScreen > 600 ? 20 : 10;

    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI calculator"),
        centerTitle: true,
        backgroundColor: Colors.teal[600],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color: isMale ? Colors.black : Colors.grey,
                            width: 2.0,
                          ),
                          color: isMale ? Colors.lightBlue : Colors.grey[500],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: sizeIcon,
                            ),
                            Text(
                              "Male",
                              style: TextStyle(
                                fontSize: sizeText,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                   SizedBox(
                    width: sizeBox,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: !isMale ? Colors.lightBlue : Colors.grey[500],
                          border: Border.all(
                            color: !isMale ? Colors.black : Colors.grey,
                            width: 2.0,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: sizeIcon,
                            ),
                            Text(
                              "Female",
                              style: TextStyle(
                                fontSize: sizeText,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
             SizedBox(
              height: sizeBox,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Height",
                      style: TextStyle(
                        fontSize: sizeText,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "$height CM",
                      style: TextStyle(
                        fontSize: sizeText2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Slider(
                      min: 80,
                      max: 280,
                      label: "Height",
                      activeColor: Colors.lightBlue,
                      value: height.toDouble(),
                      onChanged: (double value) {
                        setState(() {
                          height = value.round();
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
             SizedBox(
              height: sizeBox,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Weight",
                            style: TextStyle(
                              fontSize: sizeText,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "$weight KG",
                            style: TextStyle(
                              fontSize: sizeText2,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FloatingActionButton(
                                heroTag: "weight--",
                                onPressed: () {
                                  setState(() {
                                    if (weight > minWeight) --weight;
                                  });
                                },
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.lightBlue,
                                  size: sizeIcon2,
                                ),
                              ),
                               SizedBox(
                                width: sizeBox,
                              ),
                              FloatingActionButton(
                                heroTag: "weight++",
                                onPressed: () {
                                  setState(() {
                                    ++weight;
                                  });
                                },
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.lightBlue,
                                  size: sizeIcon2,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                   SizedBox(
                    width: sizeBox,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Age",
                            style: TextStyle(
                              fontSize: sizeText,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "$age",
                            style: TextStyle(
                              fontSize: sizeText2,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FloatingActionButton(
                                heroTag: "age--",
                                onPressed: () {
                                  setState(() {
                                    if (age > minAge) --age;
                                  });
                                },
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.lightBlue,
                                  size: sizeIcon2,
                                ),
                              ),
                               SizedBox(
                                width: sizeBox,
                              ),
                              FloatingActionButton(
                                heroTag: "age++",
                                onPressed: () {
                                  setState(() {
                                    ++age;
                                  });
                                },
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.lightBlue,
                                  size: sizeIcon2,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
             SizedBox(
              height: sizeBox,
            ),
            MaterialButton(
              height: 60,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultScreen(
                      height: height,
                      weight: weight,
                      age: age,
                      gender: isMale ? "Male" : "Female",
                    ),
                  ),
                );
              },
              color: Colors.lightBlue,
              shape: const StadiumBorder(
                side: BorderSide(
                  color: Colors.lightBlue,
                  width: 2.0, // Set the border width
                ),
              ),
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: const Text(
                  "Calculate",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
