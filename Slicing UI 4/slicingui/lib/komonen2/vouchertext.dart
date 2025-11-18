import 'package:flutter/material.dart';

class Vouchertext extends StatelessWidget {
  final String text;
  final String text2;
  const Vouchertext({super.key,required this.text, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: Icon(Icons.percent, color: Colors.blue,),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(text, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
          Text(text2, style: TextStyle(color: Colors.white, fontSize: 13),)
        ],)
      ],
    );
  }
}
