import 'package:flutter/material.dart';
import 'package:project1/komponen/bannerinf.dart';
import 'package:project1/komponen/komponenUI1.dart';
import 'package:project1/komponen/menuapp.dart';
import 'package:project1/komponen/saldoApp.dart';
import 'package:google_fonts/google_fonts.dart';
// import '';
class Page01 extends StatelessWidget {
  const Page01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.lightBlueAccent, Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.all(17),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 20,
                      children: [
                        Expanded(
                          child: SizedBox(
                            width: 400,
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                hint: Text(
                                  "Mau Makan Apa Hari ini ?",
                                  style: TextStyle(
                                    color: const Color.fromARGB(255, 0, 40, 51),
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(27),
                                ),
                                filled: true,
                                fillColor: Colors.white70,
                              ),
                            ),
                          ),
                        ),
                        CircleAvatar(
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 15,
                    children: [
                      Text(
                        "Menu Favorite Anda",
                        style: GoogleFonts.merienda(fontSize: 22),
                      ),
                      SizedBox(width: 20,),
                      SizedBox(
                        height: 150,
                        width: 150,
                        child: Image.asset('assets/fast food.png'),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      KomponenUI1(
                        logo: 'assets/burger.png',
                        text: 'Promo terus',
                      ),
                      KomponenUI1(logo: 'assets/store.png', text: 'Restoran'),
                      KomponenUI1(
                        logo: 'assets/orange-juice.png',
                        text: 'Minuman',
                      ),
                      KomponenUI1(
                        logo: 'assets/vegetables.png',
                        text: 'Buah & Sayur',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Untuk SaldoApp
            SaldoApp(),
            SizedBox(height: 20),
            // Untuk MenuApp
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [MenuApp(), MenuApp(), MenuApp(), MenuApp()],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [MenuApp(), MenuApp(), MenuApp(), MenuApp()],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Promo Hari Ini !",
                style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 180,
              width: double.infinity,
              child: PageView(children: [
                Bannerinfo(banner: 'assets/diskon.png',),
                Bannerinfo(banner: 'assets/harga.png',)
                ]),
            ),
            SizedBox(height: 25,),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: Colors.yellow,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: () {}, icon: SizedBox(
                height: 28, child: Image.asset('assets/home.png'),
              )), 
              IconButton(onPressed: () {}, icon: SizedBox(
                height: 28, child: Image.asset('assets/chat.png'),
              )), 
              IconButton(onPressed: () {}, icon: SizedBox(
                height: 28, child: Image.asset('assets/promo.png'),
              )), 
              IconButton(onPressed: () {}, icon: SizedBox(
                height: 28, child: Image.asset('assets/shopping-bag.png'),
              )), 
            ],
          ),
        ),
      ),
    );
  }
}
