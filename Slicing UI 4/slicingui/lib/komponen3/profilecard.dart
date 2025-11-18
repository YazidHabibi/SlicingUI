import 'package:flutter/material.dart';

class Profilecard extends StatelessWidget {
  const Profilecard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Container(
            width: 400,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.6),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(1, 2),
                  blurRadius: 2,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('images/pp2.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Fulan',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('fulan90@gmail.com'),
                  Text('+626343032843920'),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.all(13),
                    child: Container(
                      height: 30,
                      width: 98,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellowAccent),
                          Text("Premium"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Spacer(), 
        ],
      ),
    );
  }
}
