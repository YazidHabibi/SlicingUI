import 'package:flutter/material.dart';

class Promotrasnportasi extends StatelessWidget {
  final String image;
  const Promotrasnportasi({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: 480, 
        height: 200, 
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), 
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)
        ),
      ),
    );
  }
}