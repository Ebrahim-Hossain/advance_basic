import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  const Summary({super.key, required this.summaryData});

  final List<Map<String,Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(children: summaryData.map((data){
      return Row(children: [Text(((data["question_int"] as int) + 1).toString()),
      SizedBox(width: 10,),
      Column(children: [Text(data["question"] as String),
      Text(data["chosen_Answer"] as String),
        Text(data["correct_Answer"] as String),
      ],)],);
    }).toList(),);
  }
}
