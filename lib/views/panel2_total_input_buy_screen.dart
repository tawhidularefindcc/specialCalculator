import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:specialcalculator/drawer/panel2_drawer.dart';

import '/util/custom_text_field_container.dart';
import '/util/colors.dart';

class Panel2TodayInputBuy extends StatelessWidget {
  const Panel2TodayInputBuy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Today Input Buy',
            style: TextStyle(
              color: AppColors.buttoncolors,
            ),
          ),
          backgroundColor: AppColors.containerback,
          iconTheme: const IconThemeData(color: AppColors.buttoncolors),
        ),
        drawer: const CustomPanel2Drawer(),
        body: Container(
          width: Get.width * 1,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/singback.jpeg",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: const [
              SizedBox(
                height: 20,
              ),
              CustomTextFieldContainer(
                hintText: 'Biller Name',
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextFieldContainer(
                hintText: 'Product name& sku',
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextFieldContainer(
                hintText: 'Total Product',
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextFieldContainer(
                hintText: 'Product Price',
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Total Amount : ',
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
    );
  }
}
