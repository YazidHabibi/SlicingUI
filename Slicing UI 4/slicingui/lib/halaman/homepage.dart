import 'package:flutter/material.dart';
import 'package:slicingui/komponen1/appbar.dart';
// import 'package:slicingui/komponen/menu.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:slicingui/komponen1/bannerevent.dart';
import 'package:slicingui/komponen1/bannerpromo.dart';
import 'package:slicingui/komponen1/mart.dart';
import 'package:slicingui/komponen1/menutambahan.dart';
import 'package:slicingui/komponen1/banner.dart';
import 'package:slicingui/komponen1/pp.dart';
import 'package:slicingui/komponen1/saldo.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.blue,
              width: double.infinity,
              height: 70,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  spacing: 10,
                  children: [
                    Profile(),
                    Spacer(),
                    Appbar(icon: Icon(Icons.shopping_cart, color: Colors.blue)),
                    Appbar(icon: Icon(Icons.notifications, color: Colors.blue)),
                    Appbar(icon: Icon(Icons.settings, color: Colors.blue)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            Saldo(),
            SizedBox(height: 25),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Menutambahan(
                      text: 'Transfer',
                      icon: Icon(LucideIcons.plane, color: Colors.white, size: 26,),
                    ),
                    Menutambahan(
                      text: 'Top Up',
                      icon: Icon(LucideIcons.wallet, color: Colors.white, size: 26,),
                    ),
                    Menutambahan(
                      text: 'Tarik Tunai',
                      icon: Icon(
                        LucideIcons.circleDollarSign,
                        color: Colors.white, size: 26,
                      ),
                    ),
                    Menutambahan(
                      text: 'Konfersi',
                      icon: Icon(Icons.money_rounded, color: Colors.white, size: 26,),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Menutambahan(
                      text: 'Transfer',
                      icon: Icon(LucideIcons.wifi, color: Colors.white, size: 26,),
                    ),
                    Menutambahan(
                      text: 'Top Up',
                      icon: Icon(LucideIcons.globe, color: Colors.white, size: 26,),
                    ),
                    Menutambahan(
                      text: 'Tarik Tunai',
                      icon: Icon(LucideIcons.shoppingCart, color: Colors.white, size: 26,),
                    ),
                    Menutambahan(
                      text: 'Konfersi',
                      icon: Icon(Icons.attach_money, color: Colors.white, size: 26,),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Super Deal Today !",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  BannerPage(text: 'Diskon Ongkir Hingga 50 % !'),
                  BannerPage(text: 'Buy 1 Get 1',),
                  BannerPage(text: 'Event Bulan Ini Diskon Hingga 60 %'),
                ],
              ),
            ),
             SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Nabung & Investment",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Promo(image: 'images/banner1.png'),
                  Promo(image: 'images/banner2.png'),
                  Promo(image: 'images/banner3.png'),
                ],
              ), 
            ),
            SizedBox(height: 20,), 
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                "Jangan Lewatkan",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ), 
              Text("Belanja Anda Senyum Kami")
                ],
              ),
            ),
            SizedBox(height: 15,), 
            Padding(
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 10,
                  children: [
                    Mart(image: 'images/alfamidi.png', text: '30% off'),
                    Mart(image: 'images/alpamart.png', text: '45% off'),
                    Mart(image: 'images/indomart.png', text: '35% off'),
                    Mart(image: 'images/alfamidi.png', text: '50% off'),
                  ],
                ),
              ),
            ), 
            SizedBox(height: 15,), 
            Center(
              child: Column(
                spacing: 20,
                children: [
                  Bannerevent(image: 'images/banner4.png'),
                  Bannerevent(image: 'images/banner5.png'),
                  Bannerevent(image: 'images/banner6.png')
                ],
              ),
            ),
          ],
        ),
      ),
     
    );
  }
}
