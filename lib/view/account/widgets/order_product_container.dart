import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mens_park/helpers/custom_alert_dialog.dart';
import 'package:mens_park/helpers/fetch_image_url.dart';
import 'package:mens_park/model/cart_model/cart_model.dart';
import 'package:mens_park/model/order_model/order_model.dart';
import 'package:mens_park/res/colors.dart';
import 'package:mens_park/res/constant.dart';
import 'package:mens_park/viewmodel/bloc/account/account_bloc.dart';
import 'package:mens_park/viewmodel/bloc/cart/cart_bloc.dart';

class OrderProductContainer extends StatelessWidget {
  const OrderProductContainer({
    Key? key,
    required this.screenWidth,
    required this.productData,
    required this.index,
  }) : super(key: key);

  final double screenWidth;
  final OrderModel productData;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GestureDetector(
        onTap: () {
          context.read<CartBloc>().add(NavigateToProductScreen(
              cartProduct: CartModel.fromJson(productData.toJson())));
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: screenWidth * 0.18,
              height: screenWidth * 0.18,
              decoration: BoxDecoration(
                boxShadow: kBoxShadow,
                color: kWhite,
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FutureBuilder<String>(
                    future: getImageUrl(fullSizeImgPath: productData.imgPath1!),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Image(
                          image: CachedNetworkImageProvider(snapshot.data!,
                              scale: .5),
                          fit: BoxFit.fitHeight,
                        );
                      } else if (snapshot.hasError) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Loading failed')));
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
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text(
                        "size:${productData.productSize}",
                        style: const TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 12),
                      ),
                    ),
                    Text(
                      "quantity:${productData.quantity}",
                      style: const TextStyle(
                          fontWeight: FontWeight.w300, fontSize: 12),
                    ),
                    Row(
                      children: [
                        Text(
                          "₹${productData.totalPrice}",
                          style: kTextStyle2,
                        ),
                        const Spacer(),
                        ElevatedButton(
                          onPressed: () {
                            showCustomAlert(context,
                                'Are you sure you want to cancel the order',
                                (BuildContext ctx) {
                              context.read<AccountBloc>().add(CancelOrder(
                                  productId: productData.id!,
                                  placedTime: productData.placedTime!,
                                  index: index));
                              Navigator.of(ctx).pop();
                            });
                          },
                          child: const Text('Cancel'),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
