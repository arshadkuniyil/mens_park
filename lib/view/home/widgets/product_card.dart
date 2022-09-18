import 'package:flutter/material.dart';
import 'package:mens_park/constants/colors.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {Key? key,
      required this.paddingProductCard,
      required this.screenWidth,
      required this.index})
      : super(key: key);

  final double paddingProductCard;
  final double screenWidth;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(
        paddingProductCard,
        paddingProductCard,
        0,
        paddingProductCard,
      ),
      width: screenWidth * 0.54,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(18), color: kWhite),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.asset(
                    "assets/images/image_${index % 5 + 1}.png",
                    fit: BoxFit.cover,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    "Louis Philippe Sport",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 4.0),
                  child: Text(
                    "Designed for comfort and style",
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    "\$29.99",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: CircleAvatar(
                  minRadius: 16,
                  maxRadius: 20,
                  backgroundColor: kBlack,
                  child: Icon(
                    Icons.local_mall_outlined,
                    color: kWhite,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
