import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Start());
}

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Center(
          child: Happy(),
        ),
      ),
    );
  }
}

class Happy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset('images/happy.png'),
      nextScreen: New(),
      duration: 1,
      centered: true,
      backgroundColor: Colors.white,
      splashIconSize: 250,
    );
  }
}

class New extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset('images/ew.png'),
      nextScreen: Year(),
      duration: 1,
      centered: true,
      backgroundColor: Colors.white,
      splashIconSize: 250,
    );
  }
}

class Year extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset('images/year.png'),
      nextScreen: HomeScreen(),
      duration: 1,
      centered: true,
      backgroundColor: Colors.white,
      splashIconSize: 250,
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Happy New Year',
            style: GoogleFonts.gravitasOne(),
          ),
        ),
        body: Stack(
          children: [
            Center(child: Image.asset('images/2021.png')),
            Center(
              heightFactor: 1,
              child: Container(
                child: Image.asset(
                  'images/confetti.gif',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ));
  }
}
