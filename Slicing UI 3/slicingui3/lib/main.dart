import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:slicingui3/halaman/homepage.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: AnimatedSplashScreen(
        splash: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 380,
                width: 400,
                child: Lottie.asset('assets/loader.json'),
              ),
              Text(
                "KAUPays",
                style: GoogleFonts.halant(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        nextScreen: Homepage(),
        splashTransition: SplashTransition.fadeTransition,
        splashIconSize: 450,
      ),
    );
  }
}

// Let It Happen
