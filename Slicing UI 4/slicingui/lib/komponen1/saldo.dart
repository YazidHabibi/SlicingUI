import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:slicingui/komponen1/menu.dart';

class Saldo extends StatelessWidget {
  const Saldo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: 430,
                height: 170,
                decoration: BoxDecoration(  
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MenuMakanan(
                            icon: Icon(Icons.local_drink, color: Colors.blue),
                            text: 'Minuman',
                          ),
                          MenuMakanan(
                            icon: Icon(
                              Icons.food_bank_rounded,
                              color: Colors.blue,
                              size: 28,
                            ),
                            text: 'Makanan',
                          ),
                          MenuMakanan(
                            icon: Icon(
                              Icons.fastfood_rounded,
                              color: Colors.blue,
                            ),
                            text: 'FastFood',
                          ),
                          MenuMakanan(
                            icon: Icon(LucideIcons.vegan300, color: Colors.blue),
                            text: 'Buah&Sayur',
                          ),
                          MenuMakanan(
                            icon: Icon(
                              Icons.restaurant_menu_outlined,
                              color: Colors.blue,
                            ),
                            text: 'Restoran',
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        width: 500,
                        child: Divider(color: Colors.white, thickness: 3),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          spacing: 10,
                          children: [
                            Icon(Icons.wallet, color: Colors.white, size: 25),
                            Text(
                              "Rp.500.000",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Spacer(),
                            Text(
                              "0 Coin",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}