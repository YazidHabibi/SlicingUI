import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45, 
      width: 45,
       decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        image: DecorationImage(image: AssetImage('images/pp2.jpg'), fit: BoxFit.cover)
       ),
    );
  }
}