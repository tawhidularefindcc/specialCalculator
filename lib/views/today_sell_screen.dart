import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:specialcalculator/util/colors.dart';

import '/util/custom_text_field_container.dart';
import '/drawer/panel1_drawer.dart';

class TodaySellScreen extends StatelessWidget {
  const TodaySellScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Today Sell',
            style: TextStyle(
              color: AppColors.buttoncolors,
            ),
          ),
          backgroundColor: AppColors.containerback,
          iconTheme: const IconThemeData(color: AppColors.buttoncolors),
        ),
        drawer: const CustomPanel1Drawer(),
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
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextFieldContainer(
                    hintText: 'Cash',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextFieldContainer(
                    hintText: 'Online',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextFieldContainer(
                    hintText: 'Credit',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextFieldContainer(
                    hintText: 'EBI',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextFieldContainer(
                    hintText: 'Others',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Total:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
