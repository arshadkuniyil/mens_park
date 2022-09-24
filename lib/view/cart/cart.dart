import 'package:flutter/material.dart';
import 'package:mens_park/constants/colors.dart';
import 'package:mens_park/constants/constant.dart';
import 'package:mens_park/constants/screen_size.dart';
import 'package:mens_park/model/cart_model/cart_model.dart';
import 'package:mens_park/view/widgets/cart_icon_button.dart';
import 'package:mens_park/view/widgets/page_app_bar.dart';
import 'package:mens_park/view/widgets/text_field_outer_widget.dart';

import 'widgets/cart_product_card.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final priceCategoryName = 'Subtotal';
    final subTotal = 10000;

    final shippingCharge = 100;
    final isBagTotal = true;
    final double screenWidth = getScreenWidth(context);
    final paddingProductCard = screenWidth * 0.06;
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    final List<CartModel> productList = arguments['productList'];
    return Scaffold(
      backgroundColor: kGrey,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: PageAppBar(
          actionWidget: const CartIconButton(
            itemCount: '1',
            productList: [],
          ),
          pageName: 'Shopping Bag',
          screenWidth: screenWidth,
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: paddingProductCard,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 45,
              child: ListView.builder(
                itemCount: productList.length,
                itemBuilder: (context, index) {
                  final productData = productList[index];
                  return CartProductCard(
                      screenWidth: screenWidth, productData: productData);
                },
              ),
            ),
            Expanded(
              flex: 60,
              child: Column(
                children: [
                  Container(
                    height: screenWidth * 0.16,
                    margin: EdgeInsets.symmetric(vertical: paddingProductCard),
                    decoration: BoxDecoration(
                        color: kWhite, borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: paddingProductCard),
                      child: Row(
                        children: [
                          const Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Promo code'),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(screenWidth * .03),
                              ),
                            ),
                            child: const Text('Apply'),
                          )
                        ],
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TotalPriceChartRow(
                        priceCategoryName: 'Subtotal',
                        isBagTotal: false,
                        price: subTotal,
                        itemCount: 10,
                      ),
                      TotalPriceChartRow(
                        priceCategoryName: 'Shipping',
                        isBagTotal: false,
                        price: shippingCharge,
                        itemCount: 10,
                      ),
                      TotalPriceChartRow(
                        priceCategoryName: 'Bag Total',
                        isBagTotal: true,
                        itemCount: 10,
                        price: shippingCharge,
                      ),
                    ],
                  ),
                  Expanded(
                    child: SizedBox(
                      height: double.infinity,
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size.fromHeight(screenWidth * .15),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(screenWidth * .08),
                            ),
                          ),
                          child: Text(
                            'Proceed To Checkout',
                            style: TextStyle(fontSize: screenWidth * .05),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

class TotalPriceChartRow extends StatelessWidget {
  const TotalPriceChartRow({
    Key? key,
    required this.priceCategoryName,
    required this.isBagTotal,
    required this.price,
    required this.itemCount,
  }) : super(key: key);

  final String priceCategoryName;
  final bool isBagTotal;
  final int price;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Text(
            priceCategoryName,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
          const Spacer(),
          Text(
            isBagTotal ? "($itemCount items)  " : '',
            style: const TextStyle(fontSize: 12),
          ),
          Text(
            "₹$price",
            style: kTextStyle2,
          ),
          Text(
            ' INR',
            style: TextStyle(fontSize: 12, color: kBlack.withOpacity(.4)),
          )
        ],
      ),
    );
  }
}
