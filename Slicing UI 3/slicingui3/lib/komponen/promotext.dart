import 'package:flutter/material.dart';

class Promotext extends StatelessWidget {
  const Promotext({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Promo Terbaru", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),),
              Spacer(),
              Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  
                  borderRadius: BorderRadius.circular(10),
                  border: BoxBorder.all(color: Colors.blue),
                ),
                child: Center(
                  child: Text("Lihat Semua", style: TextStyle(color: Colors.blue)),
                ),
              ),
        ],
      ),
    );
  }
}