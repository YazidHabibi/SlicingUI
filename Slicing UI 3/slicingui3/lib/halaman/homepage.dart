import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:slicingui3/komponen/bottombar.dart';
import 'package:slicingui3/komponen/kartuapp.dart';
import 'package:slicingui3/komponen/kartutrip.dart';
import 'package:slicingui3/komponen/menuheader.dart';
import 'package:slicingui3/komponen/menukereta.dart';
import 'package:slicingui3/komponen/menutambahan.dart';
import 'package:slicingui3/komponen/promocard.dart';
import 'package:slicingui3/komponen/promotext.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                      image: AssetImage('assets/stasiun.jpg'),
                      fit: BoxFit.cover,
                      opacity: 0.8,
                    )
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: HeaderMenu(),
                  ),
                ),
                Kartuapp(),
              ],
            ),
            SizedBox(height: 90),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  spacing: 15,
                  children: [
                    MenuKereta(
                      text: 'Lokal',
                      icon: Icon(LucideIcons.trainFront300, size: 35),
                      color: Colors.blue,
                    ),
                    MenuKereta(
                      text: 'Antar Kota',
                      icon: Icon(LucideIcons.trainFront300, size: 35),
                      color: Colors.orange,
                    ),
                    MenuKereta(
                      text: 'LRT',
                      icon: Icon(LucideIcons.trainFront300, size: 35),
                      color: Colors.redAccent,
                    ),
                    MenuKereta(
                      text: 'Komuter',
                      icon: Icon(LucideIcons.trainFront300, size: 35),
                      color: Colors.purpleAccent,
                    ),
                    MenuKereta(
                      text: 'Whoosh',
                      icon: Icon(LucideIcons.trainFront300, size: 35),
                      color: Colors.blueAccent,
                    ),
                    MenuKereta(
                      text: 'Bandara',
                      icon: Icon(LucideIcons.plane300, size: 35),
                      color: Colors.deepOrange,
                    ),
                    MenuKereta(
                      text: 'lokal',
                      icon: Icon(LucideIcons.trainFront300, size: 35),
                      color: Colors.pinkAccent,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsetsGeometry.all(10),
              child: Row(
                spacing: 15,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Menutambahan(
                    text: 'Hotel',
                    icon: Icon(LucideIcons.hotel300, size: 35),
                  ),
                  Menutambahan(
                    text: 'Kartu Multi Trip',
                    icon: Icon(LucideIcons.idCard300, size: 35),
                  ),
                  Menutambahan(
                    text: 'Logistic',
                    icon: Icon(LucideIcons.chartBarBig300, size: 35),
                  ),
                  Menutambahan(
                    text: 'Show More',
                    icon: Icon(LucideIcons.circleEllipsis300, size: 35),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Kartutrip(),
            SizedBox(height: 10),
            Promotext(), 
            Padding(
              padding: const EdgeInsets.all(15),
              child: SizedBox(
                width: double.infinity, 
                height: 180, 
                child: PageView(children: [
                  Promocard(image: 'assets/banner-1.png'),
                  Promocard(image: 'assets/banner-2.png'),
                  Promocard(image: 'assets/banner-3.png'),
                ],),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Bottombar(text: 'Beranda', icon: Icon(LucideIcons.house300, size: 25,)),
            Bottombar(text: 'Kereta', icon: Icon(LucideIcons.trainFront300, size: 25,)),
            Bottombar(text: 'Tiket', icon: Icon(LucideIcons.tickets300, size: 25,)),
            Bottombar(text: 'Promo', icon: Icon(LucideIcons.circlePercent300, size: 25,)),
            Bottombar(text: 'Akun', icon: Icon(Icons.person_2_outlined, size: 25,)),
          ],
        ),
        ),
    );
  }
}
