import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:specialcalculator/login_screen.dart';
import 'package:specialcalculator/signupscreen.dart';
import 'package:specialcalculator/util/buttonusage.dart';
import 'package:specialcalculator/util/colors.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
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
            Container(
              width: Get.width,
              height: Get.height * 0.7,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/singback.jpeg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: Get.height * 0.2,
                  ),
                  Buttonusage(
                    colour: AppColors.buttoncolors,
                    name: 'SIGN UP',
                    onpressedd: () {
                      Get.off(()=>const SignUpScreen());
                    },
                  ),
                  SizedBox(
                    height: Get.height * 0.05,
                  ),
                  Buttonusage(
                    colour: AppColors.buttoncolors,
                    name: 'LOGIN',
                    onpressedd: () {
                      Get.off(()=>const LoginScreen());
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
