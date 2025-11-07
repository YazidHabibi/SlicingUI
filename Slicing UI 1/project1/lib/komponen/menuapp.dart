import 'package:flutter/material.dart';

class MenuApp extends StatelessWidget {
  const MenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60, 
      height: 60, 
      decoration: BoxDecoration(
      color: Colors.lightBlueAccent,
      borderRadius: BorderRadius.circular(9)

      ),
    );
  }
}