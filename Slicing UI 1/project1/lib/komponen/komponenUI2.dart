import 'package:flutter/material.dart';

class KomponenUI2 extends StatelessWidget {
  final String text;
  final String logo;
  const KomponenUI2({super.key, required this.logo, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 38, child: Image.asset(logo)),
        Text(text),
      ],
    );
  }
}
