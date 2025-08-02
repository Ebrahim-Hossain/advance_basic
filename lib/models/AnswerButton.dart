import 'package:flutter/material.dart';

 class AnswerButton extends StatelessWidget {
   const AnswerButton({super.key, required this.onTap, required this.text});

  final Function() onTap;
  final String text;

   @override
   Widget build(BuildContext context) {
     return  ElevatedButton(onPressed: onTap,
         style: ElevatedButton.styleFrom(backgroundColor:
         Color(0xFF14034E),
             foregroundColor: Colors.white,
             padding: EdgeInsets.symmetric(
                 horizontal: 25, vertical: 8),
             shape: RoundedRectangleBorder(borderRadius:
             BorderRadiusGeometry.circular(40))),
         child: Text(text,textAlign: TextAlign.center,),);
   }
 }
