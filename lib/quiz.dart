import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_container.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          gradientColors: [
            Color.fromARGB(255, 255, 78, 25),
            Color.fromARGB(255, 253, 111, 68),
          ],
        ),
      ),
    );
  }
}