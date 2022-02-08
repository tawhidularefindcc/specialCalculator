import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Buttonusage extends StatelessWidget {
  const Buttonusage(
      {Key? key, required this.colour, required this.onpressedd, required this.name}) : super(key: key);
  final Color colour;
  final Function onpressedd;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () {
            onpressedd();
          },
          minWidth: Get.width * 0.9,
          height: Get.height * 0.09,
          child: Text(
            name,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
