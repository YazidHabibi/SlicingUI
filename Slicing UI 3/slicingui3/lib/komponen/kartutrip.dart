import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class Kartutrip extends StatelessWidget {
  const Kartutrip({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: 450,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(
            image: AssetImage('assets/background1.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(LucideIcons.shipWheel300, color: Colors.white, size: 50),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "TRIP Planner",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Rencanakan perjalanan",
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  "Terbaikmu.",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: 80,
                height: 40,
                decoration: BoxDecoration(
                  // color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                  border: BoxBorder.all(color: Colors.white),
                ),
                child: Center(
                  child: Text("BUAT", style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
