import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_text_field_container.dart';
import 'drawer/panel1_drawer.dart';
import 'util/colors.dart';

class Panel1SecondryScreen extends StatelessWidget {
  const Panel1SecondryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Secondry Screen',
            style: TextStyle(
              color: AppColors.buttoncolors,
            ),
          ),
          backgroundColor: AppColors.containerback,
          iconTheme: const IconThemeData(color: AppColors.buttoncolors),
        ),
        drawer: const CustomPanel1Drawer(),
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
            children: [
              const SizedBox(
                height: 20,
              ),
              const CustomTextFieldContainer(
                hintText: 'Product Name',
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomTextFieldContainer(
                hintText: 'Lottery 1',
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomTextFieldContainer(
                hintText: 'Lottery 2',
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Total Count : 0',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Total Price : 0',
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
