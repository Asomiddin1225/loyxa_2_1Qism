import 'package:dars_8_rtsep/ui/splash/welcom_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MealsOnDemandApp());
}

class MealsOnDemandApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
