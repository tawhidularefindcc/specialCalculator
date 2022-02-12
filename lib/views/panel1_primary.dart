import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:specialcalculator/util/buttonusage.dart';
import 'package:specialcalculator/util/colors.dart';

import '/util/custom_text_field_container.dart';
import '/drawer/panel1_drawer.dart';

class Panel1PrimaryScreen extends StatefulWidget {
  const Panel1PrimaryScreen({Key? key}) : super(key: key);

  @override
  State<Panel1PrimaryScreen> createState() => _Panel1PrimaryScreenState();
}

class _Panel1PrimaryScreenState extends State<Panel1PrimaryScreen> {
  var itemCount = 0;
  var totalPrice = 0;
  TextEditingController lot1 = TextEditingController();
  TextEditingController lot2 = TextEditingController();
  TextEditingController lot3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Primary Screen',
            style: TextStyle(
              color: AppColors.buttoncolors,
            ),
          ),
          backgroundColor: AppColors.containerback,
          iconTheme: const IconThemeData(color: AppColors.buttoncolors),
        ),
        drawer: const CustomPanel1Drawer(),
        body: Container(
          height: Get.height,
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
                CustomTextFieldContainer(
                  hintText: 'Lottery 3',
                  controller: lot3,
                ),
                const SizedBox(
                  height: 15,
                ),
                Buttonusage(
                      colour: AppColors.buttoncolors,
                      name: 'Add Product',
                      onpressedd: () {
                        lot1.text.isEmpty?
                        setState(() {
                          totalPrice = (int.parse(lot2.text)+int.parse(lot3.text));
                        }):
                        lot2.text.isEmpty?
                        setState(() {
                          totalPrice = (int.parse(lot1.text)+int.parse(lot3.text));
                        }):
                        lot3.text.isEmpty?
                        setState(() {
                          totalPrice = (int.parse(lot1.text)+int.parse(lot2.text));
                        }):
                        setState(() {
                          totalPrice = (int.parse(lot1.text)+int.parse(lot2.text)+int.parse(lot3.text));
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
