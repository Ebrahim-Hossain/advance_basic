import 'package:flutter/material.dart';
import 'package:advance_basics/models/AnswerButton.dart';
import 'package:advance_basics/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsText();
  }
}

class _QuestionsText extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String answer) {
    widget.onSelectAnswer(answer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  final textStyle1 = TextStyle(fontSize: 16, color: Colors.white);

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.question,
              style: GoogleFonts.lato(
                fontSize: 20,
                color: Color.fromARGB(179, 255, 255, 255),
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 20),

            ...currentQuestion.getShuffledAnswer().map((answer) {
              return AnswerButton(
                onTap: () {
                  answerQuestion(answer);
                },
                text: answer,
              );
            }),
          ],
        ),
      ),
    );
  }
}
