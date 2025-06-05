import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

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
        child: StartScreen(),
      ),
    );
  }
}
