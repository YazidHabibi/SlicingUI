import 'package:flutter/material.dart';

class Komponen2 extends StatelessWidget {
  const Komponen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column( 
      spacing: 10,
      children: [
        Container( 
          width: 55, 
          height: 55, 
          decoration: BoxDecoration(
            color: Colors.grey, 
            borderRadius: BorderRadius.circular(100),
          ),
        ), 
        Container(
          width: 40, 
          height: 20, 
          decoration: BoxDecoration(
            color: Colors.grey, 
            borderRadius: BorderRadius.circular(10)
          ),
        )
      ],
    );
  }
}