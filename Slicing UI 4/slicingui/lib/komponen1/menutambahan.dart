import 'package:flutter/material.dart';

class Menutambahan extends StatelessWidget {
  final String text; 
  final Widget icon; 
  const Menutambahan({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        Container(
          width: 55, 
          height: 55, 
          decoration: BoxDecoration(
            color: Colors.blue, 
            borderRadius: BorderRadius.circular(100)
          ),
          child: Center(child: icon,),
        ), 
        Text(text),
      ],
    );
  }
}