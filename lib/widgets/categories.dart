import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/constatnts.dart';

class Categories extends StatelessWidget {
  Categories({
    super.key,
    required this.itemName,
    required this.itemIcon,
    required this.color,
    this.onTap,
  });

  final String itemName;
  final String itemIcon;
  final Color color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        // width: 110,
        padding: EdgeInsets.symmetric(horizontal: 12),
        margin: EdgeInsets.only(left: 5),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: kLightGrey,
            width: 2,
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              itemIcon,
              color: color,
              width: 30,
              height: 30,
            ),
            SizedBox(width: 5),
            Text(
              itemName,
              style: kEncodeSansMedium.copyWith(
                fontSize: 16,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
