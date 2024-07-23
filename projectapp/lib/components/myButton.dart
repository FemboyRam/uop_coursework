import 'package:flutter/material.dart';


class myButton extends StatelessWidget {
  final String text; 
  final void Function()? onTap;
  const myButton({super.key, required this.onTap, required this.text});

  final Color mainColour = const Color(0xFF89CFF0);
  final Color secondaryColour = const Color(0xFFE089CF);
  final Color accentColour = const Color(0xFF15578F);


  @override 
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration:  BoxDecoration(
        color: accentColour,
        border: Border.all(color: mainColour)),
        child: Center(
          child: Text(text))
      )
    );
  }
}