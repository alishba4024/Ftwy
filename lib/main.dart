import 'package:flutter/material.dart';
import 'package:ftwy2/congratulations.dart';
import 'package:ftwy2/onboarding.dart';
import 'package:ftwy2/splashscreen.dart';
import 'package:ftwy2/subscription.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}
