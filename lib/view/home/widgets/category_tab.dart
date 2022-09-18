
import 'package:flutter/material.dart';
import 'package:mens_park/constants/colors.dart';
import 'package:mens_park/constants/screen_size.dart';

import 'popular_list.dart';
import 'product_card.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = getScreenWidth(context);
    final double paddingProductCard = screenWidth * 0.065;
    return Container(
      color: kGrey,
      height: screenWidth * 0.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 100,
              itemBuilder: (context, index) {
                return ProductCard(
                  paddingProductCard: paddingProductCard,
                  screenWidth: screenWidth,
                  index: index,
                );
              },
            ),
          ),
          Expanded(
              flex: 1,
              child: PopularList(paddingProductCard: paddingProductCard, screenWidth: screenWidth))
        ],
      ),
    );
  }
}

