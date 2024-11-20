import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ftwy2/colors_constants.dart';
import 'package:ftwy2/onboarding.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    _startSplashScreen();
  }

  void _startSplashScreen() {
    // Set the duration of the splash screen
    Timer(const Duration(seconds: 3), _navigateToNextScreen);
  }

  void _navigateToNextScreen() {
    Get.off(Onboarding());
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: screenHeight,
            width: screenWidth,
            color: AppColors.themeclr, // Background color
            child: Align(
              alignment: Alignment.center,
              child: Container(
                height: screenHeight * 0.6, // 50% of screen height for image
                width: screenWidth * 0.8, // 80% of screen width for image
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Background Pattern.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),

          // Centered logo and welcome text
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo image
                Container(
                  height: screenHeight * 0.7, // 30% of screen height
                  width: screenWidth * 0.7, // 60% of screen width
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                // Welcome text
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: screenWidth * 0.08, // 8% of screen width
                    fontFamily: 'Schyler',
                    fontWeight: FontWeight.bold,
                    color: AppColors.clr,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
