import 'package:flutter/material.dart';

class KomponenUI1 extends StatelessWidget {
  final String logo;
  final String text;
  const KomponenUI1({super.key, required this.logo, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: 85,
      decoration: BoxDecoration(
        color: Colors.white,
        border: BoxBorder.all(color: Colors.yellow, width: 2.5),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 30, child: Image.asset(logo)),
          Text(text, style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
