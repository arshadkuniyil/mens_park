import 'package:flutter/material.dart';
import 'package:mens_park/constants/colors.dart';
import 'package:mens_park/model/product_model/product_model.dart';
import 'package:mens_park/viewmodel/service/fetch_image_url.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {Key? key,
      required this.paddingProductCard,
      required this.screenWidth,
      required this.index,
      required this.productData})
      : super(key: key);

  final ProductModel productData;
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
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: FutureBuilder<String>(
                        //TODO class
                        future: getImageUrl(
                            fullSizeImgPath: productData.fullSizeImgPath!),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Image.network(
                              snapshot.data!,
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
                    "Designed for comfort and style",
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
