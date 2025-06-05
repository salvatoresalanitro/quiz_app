import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 255, 78, 25),
                const Color.fromARGB(255, 253, 111, 68),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
            ),
          ),
        ),
      ),
    ),
  );
}
