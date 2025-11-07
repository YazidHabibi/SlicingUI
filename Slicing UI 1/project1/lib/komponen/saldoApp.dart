import 'package:flutter/material.dart';
import 'package:project1/komponen/komponenUI2.dart';

class SaldoApp extends StatelessWidget {
  const SaldoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 85,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.grey, offset: Offset(3, 3), blurRadius: 3),
        ],
        color: Colors.white,
        border: Border.all(width: 1, color: Colors.grey),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsetsGeometry.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 50, child: Image.asset('assets/wallet.png')),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Rp 100.000"), Text("0 Coin")],
            ),
            SizedBox(width: 50),
            KomponenUI2(logo: 'assets/arrow.png', text: "Bayar"),
            KomponenUI2(logo: 'assets/plus.png', text: "Top Up"),
            KomponenUI2(logo: 'assets/more.png', text: "Lainnya"),
          ],
        ),
      ),
    );
  }
}
