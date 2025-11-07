import 'package:flutter/material.dart';

class MenuKereta extends StatelessWidget {
  final String text;
  final Widget icon;
  final Color color;
  const MenuKereta({super.key, required this.text, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60, 
          width: 60, 
          decoration: BoxDecoration(
            color: color, 
            shape: BoxShape.circle
          ),
          child: icon,
        ), 
        SizedBox(height: 8,),
        Text(text, style: TextStyle(fontSize: 15),)
      ],
    );
  }
}