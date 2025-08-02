import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartingScreen extends StatelessWidget {
 const StartingScreen (this.startQuiz, {super.key});

 final Function() startQuiz;

  @override
   Widget build(context) {
    return Center(child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/quiz-logo.png",
          width: 300,
          color: Color.fromARGB(179, 255, 255, 255),),

        SizedBox(height: 40),

        Text('Learn Flutter the fun way!',style:GoogleFonts.lato(fontSize: 28,
            color: Color.fromARGB(179, 255, 255, 255),fontWeight: FontWeight.bold,),
        ),

        SizedBox(height: 32),

        OutlinedButton.icon (
          onPressed: () {
            startQuiz();
          } ,
          icon: Icon(Icons.keyboard_double_arrow_right_outlined),
          label: Text(style:
          TextStyle(fontSize: 18,
              color: Color.fromARGB(255, 255, 255, 255)),'Start Quiz'),
        ),
      ],
    ),
    );
  }

}