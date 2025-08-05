import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  const Summary({super.key, required this.summaryData});

  final List<Map<String,Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(children: summaryData.map((data){
      return Row(children: [],);
    }).toList(),);
  }
}
