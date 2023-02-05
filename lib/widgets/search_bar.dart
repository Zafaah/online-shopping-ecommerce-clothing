import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/constatnts.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search clothes. . . ",
              hintStyle: kEncodeSansRagular.copyWith(
                fontSize: 16,
                color: kGrey,
              ),
              prefixIcon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search_rounded,
                  size: 35,
                  color: kGrey,
                ),
              ),
              focusedBorder: kInputBorder.copyWith(
                borderSide: BorderSide(
                  color: kGrey,
                ),
              ),
              border: kInputBorder,
              enabledBorder: kInputBorder.copyWith(
                borderSide: BorderSide(
                  color: kLightGrey,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 8),
        Container(
          padding: EdgeInsets.all(10),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: AppColors.kSecondColor,
            borderRadius: BorderRadius.circular(kBorderRadius),
          ),
          child: SvgPicture.asset("assets/filter_icon.svg"),
        ),
      ],
    );
  }
}
