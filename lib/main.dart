import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          gradientColors: [
            const Color.fromARGB(255, 255, 78, 25),
            const Color.fromARGB(255, 253, 111, 68),
          ],
        ),
      ),
    ),
  );
}
