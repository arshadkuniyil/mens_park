import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mens_park/utils/colors.dart';
import 'package:mens_park/utils/constant.dart';
import 'package:mens_park/helpers/screen_size.dart';
import 'package:mens_park/model/cart_model/cart_model.dart';
import 'package:mens_park/view/widgets/cart_icon/cart_icon_button.dart';
import 'package:mens_park/view/widgets/page_app_bar.dart';
import 'package:mens_park/viewmodel/bloc/cart/cart_bloc.dart';

import 'widgets/cart_product_container.dart';
import 'widgets/total_price_chart_row.dart';

class CartPage extends StatelessWidget {
  CartPage({Key? key}) : super(key: key);
  final GlobalKey<FormState> promoCodeFormKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        final subTotal = state.subTotal;
        final List<CartModel> productList = state.cartProductList;
        const shippingCharge = 100;
        final int itemCount = state.cartItemCount;
        final double screenWidth = getScreenWidth(context);
        final paddingProductCard = screenWidth * 0.06;

        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: kGrey,
          appBar: const PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: PageAppBar(
              actionWidget: CartIconButton(),
              pageName: 'Shopping Bag',
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
                  child: state.isLoading
                      ? const Center(child: CircularProgressIndicator())
                      : ListView.builder(
                          itemCount: productList.length,
                          itemBuilder: (context, index) {
                            final productData = productList[index];
                            return CartProductContainer(
                              screenWidth: screenWidth,
                              productData: productData,
                              index: index,
                            );
                          },
                        ),
                ),
                Expanded(
                  flex: 60,
                  child: Column(
                    children: [
                      Container(
                        height: screenWidth * 0.16,
                        margin:
                            EdgeInsets.symmetric(vertical: paddingProductCard),
                        decoration: BoxDecoration(
                            boxShadow: kBoxShadow2,
                            color: kWhite,
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: paddingProductCard),
                          child: Row(
                            children: [
                              Expanded(
                                child: Form(
                                  key: promoCodeFormKey,
                                  child: TextFormField(
                                    validator: (value) {
                                      return 'Please enter a valid promo code';
                                    },
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Promo code',
                                    ),
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  promoCodeFormKey.currentState!.validate();
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        screenWidth * .03),
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
                            itemCount: itemCount,
                          ),
                          TotalPriceChartRow(
                            priceCategoryName: 'Shipping',
                            isBagTotal: false,
                            price: shippingCharge,
                            itemCount: itemCount,
                          ),
                          TotalPriceChartRow(
                            priceCategoryName: 'Bag Total',
                            isBagTotal: true,
                            itemCount: itemCount,
                            price: shippingCharge + subTotal,
                          ),
                        ],
                      ),
                      Expanded(
                        child: SizedBox(
                          height: double.infinity,
                          child: Center(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushReplacementNamed(
                                    '/checkout',
                                    arguments: shippingCharge + subTotal);
                              },
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
      },
    );
  }
}
