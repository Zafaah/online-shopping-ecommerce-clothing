import 'package:e_commerce_clothing/models/products_model.dart';
import 'package:e_commerce_clothing/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/constatnts.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key, required this.pro});

  final Productcs pro;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isLoved = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(5),
      // color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Positioned(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => DetailsPages(
                                  produ: widget.pro,
                                )));
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    child: Image.asset(
                      widget.pro.pImg!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 12,
                right: 12,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isLoved = !isLoved;
                    });
                  },
                  child: SvgPicture.asset(
                    isLoved == true
                        ? "assets/favorite_cloth_icon_selected.svg"
                        : "assets/favorite_cloth_icon_unselected.svg",
                    height: 30,
                    width: 30,
                  ),
                ),
              ),
            ],
          ),
          Text(
            widget.pro.pName!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: kEncodeSansSemibold.copyWith(
              fontSize: 15,
              color: AppColors.kTextColor,
            ),
          ),
          SizedBox(height: kPaddingHorizontal / 8),
          Text(
            widget.pro.pDesc!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: kEncodeSansRagular.copyWith(
              fontSize: 14,
              color: AppColors.kCountAndDescColor,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.pro.pPrice!.toString(),
                style: kEncodeSansSemibold.copyWith(
                  color: kDarkBrown,
                  fontSize: 18,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: kYellow,
                    size: 16,
                  ),
                  Text(
                    widget.pro.pRate!.toString(),
                    style: kEncodeSansRagular.copyWith(
                      color: kDarkBrown,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
