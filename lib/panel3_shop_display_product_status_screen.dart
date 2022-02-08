import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_text_field_container.dart';
import 'util/colors.dart';

class ShopDisplayProductStatus extends StatelessWidget {
  const ShopDisplayProductStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Shop Display Product Status',
            style: TextStyle(
              color: AppColors.buttoncolors,
            ),
          ),
          backgroundColor: AppColors.containerback,
          iconTheme: const IconThemeData(color: AppColors.buttoncolors),
        ),
        //drawer: const CustomPanel1Drawer(),
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
                hintText: 'Product name',
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextFieldContainer(
                hintText: 'Amount of product',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
