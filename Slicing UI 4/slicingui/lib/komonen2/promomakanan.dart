import 'package:flutter/material.dart';

class Promomakanan extends StatelessWidget {
  const Promomakanan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200, 
      width: 400, 
      decoration: BoxDecoration(
        color: Colors.blue, 
        borderRadius: BorderRadius.circular(10), 
      ),
        child:Center(child: Image.asset('images/postingan1.jpg'),)
    );
  }
}