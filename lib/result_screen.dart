import 'package:advance_basics/data/questions.dart';
import 'package:flutter/material.dart';
import 'models/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.quizRestart,required this.chosenAnswer});

  final Function() quizRestart;
  final List<String> chosenAnswer;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add({
        "question_int": 0,
        "question": questions[i].question,
        "correct_Answer": questions[i].answers[0],
        "chosen_Answer": chosenAnswer[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {


    return SizedBox(
        width: double.infinity,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [const  Text(
                  'You answered out of y questions correctly!',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
              ),
                const  SizedBox(height: 30,),
                 Summary(summaryData: getSummaryData()),
                const  SizedBox(height: 30,),
                TextButton(onPressed: () { quizRestart(); }
                  ,style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF14034E),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                ), child: Text('Restart Quiz!',
                  style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ] ,
            )
        ),
    );
  }
}
