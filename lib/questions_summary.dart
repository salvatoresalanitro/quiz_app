import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children:
              summaryData.map((data) {
                var colorCorrectAnswer = data['user_answer'] == data['correct_answer']
                              ? const Color.fromARGB(255,74,204,79,)
                              : const Color.fromARGB(255, 248, 32, 16);
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor:
                          colorCorrectAnswer,
                      child: Text(
                        ((data['question_index'] as int) +1)
                            .toString(),
                        style: GoogleFonts.lato(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['question'] as String,
                            style: GoogleFonts.lato(
                              color: const Color.fromARGB(203, 255, 255, 255),
                              fontSize: 18
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            data['user_answer'] as String,
                            style: GoogleFonts.lato(
                              color: const Color.fromARGB(255, 248, 32, 16),
                              fontSize: 16
                            ),
                          ),
                          Text(
                            data['correct_answer']as String,
                            textAlign: TextAlign.start,
                            style: GoogleFonts.lato(
                              color: const Color.fromARGB(255,74,204,79,),
                              fontSize: 16
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }).toList(),
        ),
      ),
    );
  }
}
