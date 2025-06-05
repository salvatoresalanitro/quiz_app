import 'package:flutter/material.dart';

const Alignment startLinearGradient = Alignment.topLeft;
const Alignment endLinearGradient = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    required this.gradientColors,
  });

  final List<Color> gradientColors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: startLinearGradient,
          end: endLinearGradient,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
            ),
            SizedBox(height: 80),
            Text(
              'Learn Flutter the fun way!',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 80),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                side: BorderSide.none
              ),
              onPressed: () {},
              child: const Text('Start Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
