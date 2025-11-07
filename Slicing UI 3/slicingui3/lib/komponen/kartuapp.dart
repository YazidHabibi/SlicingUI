import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:slicingui3/komponen/kartuKAI.dart';

class Kartuapp extends StatelessWidget {
  const Kartuapp({super.key});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 20,
      right: 20,
      bottom: -70,
      child: Container(
        // height: 130,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 2, offset: Offset(2, 2)),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 150, child: Center(child: Text("KAUPays", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),))),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Text(
                              "Rp. 500.000",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(LucideIcons.chevronRight),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 60, child: VerticalDivider()),
                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      KartuKAI(
                        icon: Icon(
                          LucideIcons.scanLine300,
                          size: 30,
                          color: Colors.blueAccent,
                        ),
                        text: 'Scan',
                      ),
                      KartuKAI(
                        icon: Icon(
                          LucideIcons.wallet300,
                          size: 30,
                          color: Colors.blueAccent,
                        ),
                        text: 'Top Up',
                      ),
                      KartuKAI(
                        icon: Icon(
                          LucideIcons.history300,
                          size: 30,
                          color: Colors.blueAccent,
                        ),
                        text: 'Riwayat',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Divider(thickness: 0.6, height: 20, color: Colors.grey), 
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Row(
                    spacing: 5,
                    children: [
                      Icon(Icons.monetization_on, color: Colors.amber,),
                      Text("0 RailPoints")
                    ],
                  ),
                  Spacer(), 
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(color: Colors.blue.withOpacity(0.5), 
                      borderRadius: BorderRadius.circular(40)
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.star_border_outlined), 
                          Text('Basic'), 
                          Icon(LucideIcons.chevronRight),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
