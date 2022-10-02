import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mens_park/utils/colors.dart';
import 'package:mens_park/utils/constant.dart';
import 'package:mens_park/model/product_model/product_model.dart';
import 'package:mens_park/view/widgets/show_alert_dialog.dart';
import 'package:simple_animations/simple_animations.dart';

class ProductDetailsWidget extends StatelessWidget {
  final double screenWidth;
  final ProductModel productData;
  final double iconSize;
  final addToCartItemCount = ValueNotifier(1);
  ProductDetailsWidget(
      {Key? key,
      required this.iconSize,
      required this.productData,
      required this.screenWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlayAnimationBuilder<double>(
        tween: Tween(begin: 0.6, end: 1),
        duration: const Duration(seconds: 1),
        curve: Curves.ease,
        onCompleted: () {},
        builder: (context, value, _) {
          return Container(
            padding: EdgeInsets.all(screenWidth * 0.06),
            height: screenWidth * .44 * value,
            decoration: const BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(28),
                topRight: Radius.circular(28),
              ),
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 7,
                          child: Text(
                            '${productData.productName}',
                            overflow: TextOverflow.fade,
                            softWrap: false,
                            style: kTextStyle1,
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Row(children: [
                            const Spacer(),
                            ...List.generate(
                              5,
                              (index) => index == 4
                                  ? Icon(Icons.star_half, size: iconSize)
                                  : Icon(Icons.star, size: iconSize),
                            ),
                          ]),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(height: 18),
                        Text(
                          'Size: ${productData.size.toString().replaceAll('[', '').replaceAll(']', '')}',
                          style: const TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        ),
                        const Spacer(),
                        const Text('(132 reviews)')
                      ],
                    ),
                  ],
                ),
                Column(children: [
                  const Spacer(),
                  Row(
                    children: [
                      ValueListenableBuilder(
                        valueListenable: addToCartItemCount,
                        builder: (context, value, child) {
                          return Text(
                            '₹${productData.price! * addToCartItemCount.value}',
                            style: const TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 22),
                          );
                        },
                      ),
                      const Spacer(),
                      Container(
                        margin: EdgeInsets.all(iconSize),
                        height: screenWidth * 0.08,
                        width: screenWidth * 0.32,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(color: Colors.black45)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                          onPressed: () {
                            ShowAlertDialog(
                                context: context,
                                productData: productData,
                                quantity: addToCartItemCount.value);
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(iconSize),
                            ),
                          ),
                          child: const Text('Cart',
                              style: TextStyle(color: kWhite)),
                        ),
                      )
                    ],
                  )
                ]),
              ],
            ),
          );
        });
  }
}
