import 'package:flutter/material.dart';
import 'package:specialcalculator/other_catagory_total_sell.dart';

import '../biller_paid_out_screen.dart';
import '../panel1_primary.dart';
import '../panel1_secondry.dart';
import '../today_sell_screen.dart';

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
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Panel1PrimaryScreen()),
              );
            },
          ),
          divider,
          ListTile(
            title: const Text('Secondary'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Panel1SecondryScreen()),
              );
            },
          ),
          divider,
          ListTile(
            title: const Text('Today Sell'),
            onTap: () {
              //TodaySellScreen
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const TodaySellScreen()),
              );
            },
          ),
          divider,
          ListTile(
            title: const Text('Biller Paid out'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BillerPaidOut()),
              );
              // Navigator.pop(context);
            },
          ),
          divider,
          ListTile(
            title: const Text('Others category total sell'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const OtherCatagoryTotalSellScreen()),
              );
              // Navigator.pop(context);
            },
          ),
          divider,
        ],
      ),
    );
  }
}
