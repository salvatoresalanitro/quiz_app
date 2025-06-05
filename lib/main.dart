import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          gradientColors: [
            Color.fromARGB(255, 255, 78, 25),
            Color.fromARGB(255, 253, 111, 68),
          ],
        ),
      ),
    ),
  );
}
