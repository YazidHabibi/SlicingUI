import 'package:flutter/material.dart';

class MenuMakanan extends StatelessWidget {
  final Widget icon;
  final String text;
  const MenuMakanan({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      children: [
        Container(
          width: 50, 
          height: 50, 
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15), 
          ),
          child: icon,
        ),
        Text(text, style: TextStyle(color: Colors.white),),
      ],
    );
  }
}