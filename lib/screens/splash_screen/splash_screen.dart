import 'dart:async';

import 'package:craftmyplate/constants/colors.dart';
import 'package:craftmyplate/constants/images.dart';
import 'package:craftmyplate/on_boarrding_screen/on_boarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    startTimer();
    super.initState();
  }

  void startTimer() {
    const duration = Duration(milliseconds: 1000);

    Timer(duration, () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnBoardingScreen()),
      );
    });
  }

  bool animate = false;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: creammColor,
      body: Stack(
        children: [
          AnimatedPositioned(
              height: animate ? screenHeight : screenHeight * 0.95,
              width: animate ? screenWidth : screenWidth * 0.95,
              child: Image(image: AssetImage(vector3)),
              duration: Duration(milliseconds: 500)),

          // logl
          Positioned(
            top: screenHeight * 0.35,
            left: screenWidth * 0.27,
            child: const Image(
              image: AssetImage(logo),
            ),
          ),
        ],
      ),
    );
  }
}
