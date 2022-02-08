import 'package:flutter/material.dart';
import 'package:specialcalculator/stock_to_shop_display_transfer.dart';
import 'package:specialcalculator/total_stock_screen.dart';

import '../biller_paid_out_screen.dart';
import '../panel1_primary.dart';
import '../panel1_secondry.dart';
import '../today_sell_screen.dart';

const divider = Divider(
  color: Colors.grey,
  thickness: 1,
);

class CustomPanel2Drawer extends StatelessWidget {
  const CustomPanel2Drawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: const Text('Today input (buy)'),
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
            title: const Text('Total stock'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const TotalStockScreen()),
              );
              // Navigator.pop(context);
            },
          ),
          divider,
          ListTile(
            title: const Text('Stock to shop display transfer'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const StockToShopDisplayTransferScreen()),
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
