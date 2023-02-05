import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:e_commerce_clothing/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/constatnts.dart';

class RoutesPage extends StatefulWidget {
  const RoutesPage({super.key});

  @override
  State<RoutesPage> createState() => _RoutesPageState();
}

class _RoutesPageState extends State<RoutesPage> {
  int _currentIndex = 0;

  List screens = [
    HomePage(),
    CardPages(),
    FavoritePages(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
        ),
        height: 64,
        child: CustomNavigationBar(
          isFloating: true,
          borderRadius: const Radius.circular(25),
          selectedColor: kWhite,
          unSelectedColor: kGrey,
          backgroundColor: kBrown,
          strokeColor: Colors.transparent,
          scaleFactor: 0.2,
          iconSize: 40,
          items: [
            CustomNavigationBarItem(
              icon: _currentIndex == 0
                  ? SvgPicture.asset('assets/home_icon_selected.svg')
                  : SvgPicture.asset('assets/home_icon_unselected.svg'),
            ),
            CustomNavigationBarItem(
              icon: _currentIndex == 1
                  ? SvgPicture.asset('assets/cart_icon_selected.svg')
                  : SvgPicture.asset('assets/cart_icon_unselected.svg'),
            ),
            CustomNavigationBarItem(
              icon: _currentIndex == 2
                  ? SvgPicture.asset('assets/favorite_icon_selected.svg')
                  : SvgPicture.asset('assets/favorite_icon_unselected.svg'),
            ),
            CustomNavigationBarItem(
              icon: _currentIndex == 3
                  ? SvgPicture.asset('assets/account_icon_selected.svg')
                  : SvgPicture.asset('assets/account_icon_unselected.svg'),
            ),
          ],
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
      body: screens[_currentIndex],
    );
  }
}
