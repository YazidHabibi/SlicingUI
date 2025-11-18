import 'package:flutter/material.dart';

class Bannerpromo2 extends StatelessWidget {
  final String text;
  const Bannerpromo2({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        width: 200,
        height: 120,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 20,),
            ),
          ),
        ),
      ),
    );
  }
}