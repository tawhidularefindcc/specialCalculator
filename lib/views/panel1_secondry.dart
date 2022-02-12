import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:specialcalculator/util/buttonusage.dart';

import '/util/custom_text_field_container.dart';
import '/drawer/panel1_drawer.dart';
import '/util/colors.dart';

class Panel1SecondryScreen extends StatefulWidget {
  const Panel1SecondryScreen({Key? key}) : super(key: key);

  @override
  State<Panel1SecondryScreen> createState() => _Panel1SecondryScreenState();
}

class _Panel1SecondryScreenState extends State<Panel1SecondryScreen> {
  var itemCount = 0;
  var totalPrice = 0;
  TextEditingController lot1 = TextEditingController();
  TextEditingController lot2 = TextEditingController();

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
          child: SingleChildScrollView(
            child: Column(
              children:  [
                const SizedBox(
                  height: 20,
                ),
                const CustomTextFieldContainer(
                  hintText: 'Product Name',
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextFieldContainer(
                  hintText: 'Lottery 1',
                  controller: lot1,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextFieldContainer(
                  hintText: 'Lottery 2',
                  controller: lot2,
                ),
                const SizedBox(
                  height: 15,
                ),
                Buttonusage(
                      colour: AppColors.buttoncolors,
                      name: 'Add Product',
                      onpressedd: () {
                          setState(() {
                          totalPrice = (int.parse(lot1.text)+int.parse(lot2.text));
                        });
                      },
                    ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Total Count : $itemCount',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Total Price : $totalPrice',
                  style: const TextStyle(
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
    );
  }
}
