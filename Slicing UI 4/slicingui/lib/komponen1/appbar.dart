import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  final Widget icon;
  const Appbar({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
       height: 40, 
       decoration: BoxDecoration(
        color: Colors.white, 
        borderRadius: BorderRadius.circular(100)
       ),
       child: icon,
    );
  }
}