import 'package:flutter/material.dart';

Widget selectGender({
 required bool isMale,
 required IconData icon,
  double sizeIcon = 70,
  double sizeText = 25,
  String text = "Male",
  Color firstColor = Colors.lightBlue,
  Color secondColor = Colors.grey,
  double borderSize = 20,
}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(borderSize),
      border: Border.all(
        color: isMale ? Colors.black : Colors.grey,
        width: 2.0,
      ),
      color: isMale ? firstColor : secondColor,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: sizeIcon,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: sizeText,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
