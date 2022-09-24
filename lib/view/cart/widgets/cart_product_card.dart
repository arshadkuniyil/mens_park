import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mens_park/constants/colors.dart';
import 'package:mens_park/constants/constant.dart';
import 'package:mens_park/model/cart_model/cart_model.dart';
import 'package:mens_park/viewmodel/service/fetch_image_url.dart';

class CartProductCard extends StatelessWidget {
  const CartProductCard({
    Key? key,
    required this.screenWidth,
    required this.productData,
  }) : super(key: key);

  final double screenWidth;
  final CartModel productData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Container(
            width: screenWidth * 0.18,
            height: screenWidth * 0.18,
            decoration: BoxDecoration(
              color: kWhite.withAlpha(120),
              borderRadius: BorderRadius.circular(12),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: FutureBuilder<String>(
                  future: getImageUrl(fullSizeImgPath: productData.imgPath1!),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      //TODO ERROR BUILDER
                      return Image(
                        image: CachedNetworkImageProvider(snapshot.data!,
                            scale: .5),
                        fit: BoxFit.fitHeight,
                      );
                    } else if (snapshot.hasError) {
                      //TODO HANDLE ERROR
                    }
                    return const SizedBox(
                      child: Center(child: CircularProgressIndicator()),
                    );
                  }),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.06, bottom: screenWidth * 0.01),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: screenWidth * .4,
                        child: Text(
                          productData.productName ?? '',
                          overflow: TextOverflow.fade,
                          softWrap: false,
                          maxLines: 1,
                          style: kTextStyle2,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        iconSize: screenWidth * 0.04,
                        onPressed: () {},
                        icon: const Icon(Icons.close),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      "size:${productData.productSize}",
                      style: const TextStyle(
                          fontWeight: FontWeight.w300, fontSize: 12),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "₹${productData.totalPrice}",
                        style: kTextStyle2,
                      ),
                      const Spacer(),
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        iconSize: screenWidth * 0.08,
                        onPressed: () {},
                        icon: const Icon(Icons.remove_circle_outline),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          productData.quantity.toString().length == 1
                              ? '0${productData.quantity}'
                              : productData.quantity.toString(),
                          style: kTextStyle2,
                        ),
                      ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        iconSize: screenWidth * 0.08,
                        onPressed: () {},
                        icon: const Icon(Icons.add_circle),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
