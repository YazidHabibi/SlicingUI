import 'package:flutter/material.dart';

class Bannerevent extends StatelessWidget {
  final String image;
  const Bannerevent({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: 430, 
        height: 150, 
        decoration: BoxDecoration(
          // color: Colors.blue, 
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Colors.grey, offset: Offset(1, 1), blurRadius: 2)],
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)
        ),
      ),
    );
  }
}