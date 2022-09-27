import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mens_park/constants/colors.dart';
import 'package:mens_park/constants/constant.dart';
import 'package:mens_park/model/product_model/product_model.dart';

class ProductDetailsWidget extends StatelessWidget {
  final double screenWidth;
  final ProductModel productData;
  final double iconSize;

  ProductDetailsWidget(
      {Key? key,
      required this.iconSize,
      required this.productData,
      required this.screenWidth})
      : super(key: key);
  final addToCartItemCount = ValueNotifier(1);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(screenWidth * 0.06),
      height: screenWidth * .44,
      decoration: const BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(28),
          topRight: Radius.circular(28),
        ),
      ),
      child: Column(children: [
        Row(
          children: [
            Text(
              '${productData.productName}',
              style: kTextStyle1,
            ),
            const Spacer(),
            Row(
              children: List.generate(
                5,
                (index) => index == 4
                    ? Icon(Icons.star_half, size: iconSize)
                    : Icon(Icons.star, size: iconSize),
              ),
            )
          ],
        ),
        Row(
          children: [
            const SizedBox(height: 18),
            Text(
              'Size: ${productData.size.toString().replaceAll('[', '').replaceAll(']', '')}',
              style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
            ),
            const Spacer(),
            const Text('(132 reviews)')
          ],
        ),
        const Spacer(),
        Row(
          children: [
            Text(
              '₹${productData.price}',
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
            ),
            const Spacer(),
            Container(
              margin: EdgeInsets.all(iconSize),
              height: screenWidth * 0.08,
              width: screenWidth * 0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Colors.black45)),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      if (addToCartItemCount.value == 1) return;
                      addToCartItemCount.value -= 1;
                    },
                    iconSize: iconSize,
                    color: Colors.black45,
                    icon: const Icon(Icons.remove),
                  ),
                  ValueListenableBuilder(
                    builder: (context, value, child) {
                      return Text('${addToCartItemCount.value}');
                    },
                    valueListenable: addToCartItemCount,
                  ),
                  IconButton(
                    onPressed: () {
                      addToCartItemCount.value += 1;
                      log('${addToCartItemCount.value}');
                    },
                    iconSize: iconSize,
                    color: Colors.black45,
                    icon: const Icon(Icons.add),
                  )
                ],
              ),
            ),
            SizedBox(
              height: screenWidth * .12,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(iconSize),
                  ),
                ),
                child: const Text('Cart', style: TextStyle(color: kWhite)),
              ),
            )
          ],
        )
      ]),
    );
  }
}
