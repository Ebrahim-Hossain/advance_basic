import 'package:flutter/material.dart';

 class TextStyle1 extends StatelessWidget {
   const TextStyle1(this.onTap, this.text, {super.key});

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
         child: Text(text));
   }
 }
