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

  final textStyle1 = TextStyle(
      fontSize: 40,
      color: Colors.white);

  @override
  Widget build(context) {
    return SizedBox(width: double.infinity ,
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("question: ${questions[0].question}",style: textStyle1),

          SizedBox(height: 20,),

          TextStyle1(() {}, "Answer1 "),
          TextStyle1(() {}, "Answer2 "),
          TextStyle1(() {}, "Answer3"),
          TextStyle1(() {}, "Answer4"),
        ],
      ),
     );
  }

}
