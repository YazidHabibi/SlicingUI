import 'package:flutter/material.dart';

class Bottombar extends StatelessWidget {
  final String text;
  final Widget icon;
  const Bottombar({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      children: [
        icon, 
        Text(text)
      ],
    );
  }
}