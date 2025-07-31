import 'package:flutter/material.dart';
import 'package:advance_basics/models/text_style1.dart';
import 'package:advance_basics/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
 const QuestionsScreen({super.key});
 @override
  State<QuestionsScreen>  createState() {
   return _QuestionsText();
}
}

class _QuestionsText extends State<QuestionsScreen> {

  final currentQuestion = questions[0];
  final textStyle1 = TextStyle(
      fontSize: 40,
      color: Colors.white);

  @override
  Widget build(context) {
    return SizedBox(width: double.infinity ,
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(currentQuestion.question,style: textStyle1),

          SizedBox(height: 20,),

          TextStyle1(() {}, currentQuestion.answers[0]),
          TextStyle1(() {}, currentQuestion.answers[1]),
          TextStyle1(() {}, currentQuestion.answers[2]),
          TextStyle1(() {}, currentQuestion.answers[3]),
        ],
      ),
     );
  }

}
