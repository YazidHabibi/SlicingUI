import 'package:flutter/material.dart';

class Option extends StatelessWidget {
  final String text;
  final Widget icon;
  const Option({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          icon, 
          SizedBox(width: 8,),
          Text(text, style: TextStyle(fontWeight: FontWeight.bold),), 
          Spacer(), 
          Icon(Icons.arrow_right_outlined, size: 25,),
        ],
      ),
    );
  }
}