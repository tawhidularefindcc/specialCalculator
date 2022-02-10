import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:specialcalculator/util/colors.dart';
import 'package:specialcalculator/util/constants.dart';

class CustomTextFieldContainer extends StatelessWidget {
  final String? hintText;
  const CustomTextFieldContainer({
    Key? key,
    @required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.9,
      decoration: BoxDecoration(
        color: AppColors.containerback,
        border: Border.all(width: 3.0, color: AppColors.containerback),
        borderRadius: const BorderRadius.all(
            Radius.circular(25.0) //                 <--- border radius here
            ),
      ),
      child: TextField(
        controller: TextEditingController(),
        cursorColor: AppColors.greytextcolor,
        decoration: ktextFieldDecoration.copyWith(
          hintText: hintText!,
        ),
      ),
    );
  }
}
