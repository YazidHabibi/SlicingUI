import 'package:flutter/material.dart';
// import 'package:lucide_icons_flutter/lucide_icons.dart';

class KartuKAI extends StatelessWidget {
  final Widget icon; 
  final String text;
  const KartuKAI({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        icon,
        Text(text, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
      ],
    );
  }
}
