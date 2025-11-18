import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:slicingui/halaman/homepage.dart';
import 'package:slicingui/halaman/loginpage.dart';
import 'package:slicingui/halaman/profilepage.dart';
import 'package:slicingui/halaman/promopage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: AnimatedSplashScreen(
        splash: Center(
          child: SizedBox(width: 200, height: 200, child: Lottie.asset('images/Moon Loader.json')),
        ),
        nextScreen: Loginpage(),
        splashIconSize: 300,
      ),
    );
  }
}

class NavigasiBawah extends StatefulWidget {
  const NavigasiBawah({super.key});

  @override
  State<NavigasiBawah> createState() => _NavigasiBawahState();
}

class _NavigasiBawahState extends State<NavigasiBawah> {
  int selectedindex = 0;
  final List<Widget> pages = [Homepage(), Promopage(), Profilepage()];
  void onItemTapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedindex,
        onTap: onItemTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.discount_rounded),
            label: 'Promo',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
