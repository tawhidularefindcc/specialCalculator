import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:specialcalculator/panel1_primary.dart';
import 'package:specialcalculator/panel2_total_input_buy_screen.dart';
import 'package:specialcalculator/panel3_shop_display_product_status_screen.dart';
import 'package:specialcalculator/util/buttonusage.dart';
import 'package:specialcalculator/util/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/singback.jpeg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.2,
              ),
              Buttonusage(
                colour: AppColors.buttoncolors,
                name: 'PANEL 1',
                onpressedd: () {
                  Get.to(()=>const Panel1PrimaryScreen());
                },
              ),
              SizedBox(
                height: Get.height * 0.05,
              ),
              Buttonusage(
                colour: AppColors.buttoncolors,
                name: 'PANEL 2',
                onpressedd: () {
                  Get.to(()=>const Panel2TodayInputBuy());
                },
              ),
              SizedBox(
                height: Get.height * 0.05,
              ),
              Buttonusage(
                colour: AppColors.buttoncolors,
                name: 'PANEL 3',
                onpressedd: () {
                  Get.to(()=>const ShopDisplayProductStatus());
                },
              ),
              SizedBox(
                height: Get.height * 0.05,
              ),
              Buttonusage(
                colour: AppColors.buttoncolors,
                name: 'PANEL 4',
                onpressedd: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => LoginScreen()),
                  // );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
