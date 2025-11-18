import 'package:flutter/material.dart';

class Checkincoin extends StatelessWidget {
  const Checkincoin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 100,
        width: 400,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.play_for_work_outlined, size: 30, color: Colors.white),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Checkin Setiap Harinya!",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    Text('Ambil Hadiahnya', style: TextStyle(color: Colors.white, fontSize: 12)),
                  ],
                ),
                Container(
                  height: 30, 
                  width: 90, 
                  decoration: BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text("Claim", style: TextStyle(color: Colors.blue),),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
