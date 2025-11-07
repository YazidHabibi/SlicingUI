import 'package:flutter/material.dart';

class Menutambahan extends StatelessWidget {
  final String text; 
  final Widget icon;
  const Menutambahan({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 55,
           width: 55, 
           decoration: BoxDecoration(
            color: Colors.lightBlueAccent.withOpacity(0.2), 
            shape: BoxShape.circle
           ),
           child: icon,
        ), 
        SizedBox(height: 7,),
        Text(text)
      ],
    );
  }
}