import 'package:advance_basics/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:advance_basics/starting_screen.dart';

class Quiz extends StatefulWidget {
const Quiz({super.key});
  @override
  State<Quiz>  createState() {
  return _QuizText();
}

}
class _QuizText extends State<Quiz> {

  var activeScreen = 'Starting-Screen';


  void changingScreen() {
    setState(() {
      activeScreen = 'Questions-Screen';
    });
  }

@override
Widget build(context) {

  Widget? screenWidget;
    if (activeScreen == 'Starting-Screen') {
      screenWidget = StartingScreen(changingScreen);
    }else {screenWidget = const QuestionsScreen();}

return MaterialApp(
  home: Scaffold(
    body: Container(
      decoration: BoxDecoration(
        gradient:const LinearGradient(
            colors:
            [Color.fromARGB(255, 30, 3, 93),
              Color.fromARGB(255, 73, 15, 158)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: screenWidget,
    ),
  ),
);
}

}