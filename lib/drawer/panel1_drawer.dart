import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/views/biller_paid_out_screen.dart';
import '/views/other_catagory_total_sell.dart';
import '/views/panel1_primary.dart';
import '/views/panel1_secondry.dart';
import '/views/today_sell_screen.dart';

const divider = Divider(
  color: Colors.grey,
  thickness: 1,
);

class CustomPanel1Drawer extends StatelessWidget {
  const CustomPanel1Drawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: const Text('Primary'),
            onTap: () {
              Get.to(()=>const Panel1PrimaryScreen());
            },
          ),
          divider,
          ListTile(
            title: const Text('Secondary'),
            onTap: () {
              Get.to(()=>const Panel1SecondryScreen());
            },
          ),
          divider,
          ListTile(
            title: const Text('Today Sell'),
            onTap: () {
              //TodaySellScreen
              Get.to(()=>const TodaySellScreen());
            },
          ),
          divider,
          ListTile(
            title: const Text('Biller Paid out'),
            onTap: () {
              Get.to(()=>const BillerPaidOut());
              // Navigator.pop(context);
            },
          ),
          divider,
          ListTile(
            title: const Text('Others category total sell'),
            onTap: () {
              Get.to(()=>const OtherCatagoryTotalSellScreen());
              // Navigator.pop(context);
            },
          ),
          divider,
        ],
      ),
    );
  }
}
