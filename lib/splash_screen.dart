import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:specialcalculator/util/colors.dart';
import 'package:specialcalculator/welcomescreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    getHomeScreen();
  }

  void getHomeScreen() async {
    // ignore: prefer_const_constructors
    Timer(Duration(seconds: 3), () async {
      await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const WelcomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Container(
            width: Get.width,
            height: Get.height * 0.3,
            color: AppColors.logoTextbackpink,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: AppColors.buttoncolors,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'CLASSIC',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
                SizedBox(
                  width: Get.width * 0.3,
                  height: Get.height * 0.1,
                  child: Image.asset(
                    "assets/images/logoText.png",
                    width: Get.width,
                    height: Get.height,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: Get.width,
            height: Get.height * 0.7,
            child: Center(
              child: Image.asset(
                "assets/images/logo.jpeg",
                width: Get.width,
                height: Get.height,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
