import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:movies_app/constants/colors.dart';
import 'package:movies_app/pages/home.dart';

void main() {
  runApp((MaterialApp(
    initialRoute: '/',
    routes: {'/': (context) => splash_screen(), '/home': (context) => Home()},
  )));
}

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        duration: 4000,
        splash: Image.asset(
          'assets/images/movie_club_logo2.png',
        ),
        nextScreen: Home(),
        splashTransition: SplashTransition.scaleTransition,
        backgroundColor: HexColor('#49608C'),
        splashIconSize: 250,
      ),
    );
  }
}
