import 'package:flutter/material.dart';

class Mart extends StatelessWidget {
  final String image;
  final String text;
  const Mart({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: Stack(
        children: [
          Container(
            width: 150,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(color: Colors.grey, offset: Offset(1, 3), blurRadius: 2)]
            ),
            child: Center(child: Image.asset(image)),
          ),
          Positioned(
            child: Container(
              height: 30,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Center(child: Text(text, style: TextStyle(color: Colors.white),)),
            ),
          ),
        ],
      ),
    );
  }
}
