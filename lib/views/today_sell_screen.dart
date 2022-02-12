import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:specialcalculator/util/buttonusage.dart';
import 'package:specialcalculator/util/colors.dart';

import '/util/custom_text_field_container.dart';
import '/drawer/panel1_drawer.dart';

class TodaySellScreen extends StatefulWidget {
  const TodaySellScreen({Key? key}) : super(key: key);

  @override
  State<TodaySellScreen> createState() => _TodaySellScreenState();
}

class _TodaySellScreenState extends State<TodaySellScreen> {
  var total = 0;
  TextEditingController cash = TextEditingController();
  TextEditingController online = TextEditingController();
  TextEditingController credit = TextEditingController();
  TextEditingController ebi = TextEditingController();
  TextEditingController other = TextEditingController();

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
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextFieldContainer(
                    hintText: 'Cash',
                    controller: cash,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextFieldContainer(
                    hintText: 'Online',
                    controller: online,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextFieldContainer(
                    hintText: 'Credit',
                    controller: credit,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextFieldContainer(
                    hintText: 'EBI',
                    controller: ebi,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextFieldContainer(
                    hintText: 'Others',
                    controller: other,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Buttonusage(
                      colour: AppColors.buttoncolors,
                      name: 'Calculate total',
                      onpressedd: () {
                          setState(() {
                          total = (int.parse(cash.text)+int.parse(online.text)+int.parse(credit.text)+int.parse(ebi.text)+int.parse(other.text));
                        });
                      },
                    ),
                const SizedBox(
                  height: 15,
                ),
                  Text(
                    'Total: $total',
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
      ),
    );
  }
}
