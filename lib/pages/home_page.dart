import 'package:e_commerce_clothing/models/products_model.dart';
import 'package:e_commerce_clothing/widgets/products.dart';
import 'package:e_commerce_clothing/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/constatnts.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int current = 0;
  List items = [
    ["assets/all_items_icon_selected.svg", 'All items'],
    ["assets/dress_icon_unselected.svg", 'Dress'],
    ["assets/hat_icon_unselected.svg", 'Hat'],
    ["assets/watch_icon_unselected.svg", 'Watch'],
  ];
  List img = [
    "assets/images/image-01.jpg",
    "assets/images/image-02.jpg",
    "assets/images/image-03.png",
    "assets/images/image-04.png",
    "assets/images/image-05.jpg",
    "assets/images/image-06.jpg",
    "assets/images/image-07.jpg",
    "assets/images/image-08.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Custom App Bar
                SizedBox(
                  height: kPaddingHorizontal,
                ),
                CustomAppBar(),
                SizedBox(height: kPaddingHorizontal),
                //Search Box
                SearchBar(),
                SizedBox(height: kPaddingHorizontal),
                //List Of Our Categories
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 45,
                        child: ListView.builder(
                            itemCount: items.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, int index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    current = index;
                                  });
                                },
                                child: Container(
                                  height: 36,
                                  // width: 110,
                                  padding: EdgeInsets.symmetric(horizontal: 12),
                                  margin: EdgeInsets.only(left: 5),
                                  decoration: BoxDecoration(
                                    color: current == index
                                        ? AppColors.kSecondColor
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                    border: current == index
                                        ? null
                                        : Border.all(
                                            color: kLightGrey,
                                            width: 2,
                                          ),
                                  ),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        items[index][0],
                                        color: current == index
                                            ? Colors.white
                                            : AppColors.kSecondColor,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        items[index][1],
                                        style: kEncodeSansMedium.copyWith(
                                          fontSize: 16,
                                          color: current == index
                                              ? Colors.white
                                              : AppColors.kSecondColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                  ],
                ),

                // Product Cards
                SizedBox(height: kPaddingHorizontal),

                Container(
                  //margin: EdgeInsets.only(bottom: 100),
                  height: MediaQuery.of(context).size.height * 1.9,
                  child: MasonryGridView.count(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: productcLists.length,
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 23,
                    itemBuilder: (context, index) {
                      return ProductCard(
                        pro: productcLists[index],
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
