import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mens_park/constants/colors.dart';
import 'package:mens_park/model/product_model/product_model.dart';
import 'package:mens_park/viewmodel/service/fetch_image_url.dart';
import 'size_alert_dialog.dart';

class ProductCard extends StatelessWidget {
  final ProductModel productData;
  final double paddingProductCard;
  final double screenWidth;
  final int index;
  final bool isLast;

  const ProductCard({
    Key? key,
    required this.paddingProductCard,
    required this.screenWidth,
    required this.index,
    required this.productData,
    required this.isLast,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(
        paddingProductCard,
        paddingProductCard,
        isLast ? paddingProductCard : 0,
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
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: FutureBuilder<String>(
                        //TODO class
                        future: getImageUrl(
                            fullSizeImgPath: productData.fullSizeImgPath!),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            //TODO ERROR BUILDER
                            return CachedNetworkImage(
                              imageUrl: snapshot.data!,
                              fit: BoxFit.cover,
                            );
                          } else if (snapshot.hasError) {
                            //TODO
                          }
                          return const SizedBox(
                            height: double.infinity,
                            child: Center(child: CircularProgressIndicator()),
                          );
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    productData.productName ?? '',
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 4.0),
                  child: Text(
                    "Designed for comfort ",
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    " ₹ ${productData.price}",
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 8, 8),
            child: Align(
              alignment: Alignment.bottomRight,
              child: IconButton(
                iconSize: screenWidth * .1,
                onPressed: () {
                  // context.read<HomeAppBarBloc>().add(CartEvent());

                  showDialog(
                    context: context,
                    builder: (ctx) {
                      final sizeList = productData.size;
                      final ValueNotifier<String> dropDownValue =
                          ValueNotifier<String>(sizeList![0]);
                      return SizeAlertDialog(
                          productData: productData,
                          dropDownValue: dropDownValue,
                          sizeList: sizeList,
                          blocContext: context);
                    },
                  );
                },
                icon: const CircleAvatar(
                    minRadius: 16,
                    maxRadius: 20,
                    backgroundColor: kBlack,
                    child: Icon(
                      Icons.local_mall_outlined,
                      color: kWhite,
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
