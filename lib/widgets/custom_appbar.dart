import 'package:e_commerce_clothing/constants/constatnts.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/images/sal.jpg"),
        ),
        Text(
          "Zafaah Online Shopping",
          style: kEncodeSansBold.copyWith(
            color: AppColors.kTextColor,
            fontSize: 19,
          ),
        ),
        Icon(
          Icons.shopping_cart,
          color: AppColors.kSecondColor,
        )
      ],
    );
  }
}
