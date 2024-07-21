import 'package:flutter/material.dart';


class myTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
   
    // colour palette
  final Color mainColour = const Color(0xFF89CFF0);
  final Color secondaryColour = const Color(0xFFE089CF);
  final Color accentColour = const Color(0xFF15578F);
  
  const myTextField({
    super.key,
    required this.controller, 
    required this.hintText,
    required this.obscureText
  });

  @override 
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration:  InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: mainColour),
        ),
        hintText: hintText,
        hintStyle: TextStyle(color: secondaryColour)
      )
    );
  }
}