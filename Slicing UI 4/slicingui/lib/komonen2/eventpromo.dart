import 'package:flutter/material.dart';

class Eventpromo extends StatelessWidget {
  final String text;
  const Eventpromo({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35, 
      width: 80, 
      decoration: BoxDecoration(
        color: Colors.blue, 
        borderRadius: BorderRadius.circular(12), 
      ),
      child: Center(child: Text(text, style: TextStyle(color: Colors.white),),),
    );
  }
}