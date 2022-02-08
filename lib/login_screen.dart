import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:specialcalculator/custom_text_field_container.dart';
import 'package:specialcalculator/home.dart';
import 'package:specialcalculator/util/buttonusage.dart';
import 'package:specialcalculator/util/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    height: Get.height * 0.05,
                  ),
                  const CustomTextFieldContainer(hintText: 'EMAIL'),
                  SizedBox(
                    height: Get.height * 0.03,
                  ),
                  const CustomTextFieldContainer(hintText: 'PASSWORD'),
                  SizedBox(
                    height: Get.height * 0.05,
                  ),
                  Buttonusage(
                    colour: AppColors.buttoncolors,
                    name: 'LOGIN',
                    onpressedd: () {
                      Get.off(()=>const HomeScreen());
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
