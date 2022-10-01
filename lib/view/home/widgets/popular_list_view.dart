import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mens_park/utils/colors.dart';
import 'package:mens_park/utils/constant.dart';
import 'package:mens_park/model/product_model/product_model.dart';
import 'package:mens_park/viewmodel/service/fetch_image_url.dart';

class PopularListView extends StatelessWidget {
  final List<ProductModel> popularProductList;
  final double paddingProductCard;
  final double screenWidth;

  const PopularListView({
    Key? key,
    required this.paddingProductCard,
    required this.screenWidth,
    required this.popularProductList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        paddingProductCard,
        0,
        paddingProductCard,
        0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Popular",
            style: kTextStyle1,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: popularProductList.length,
              itemBuilder: (context, index) {
                final productData =
                    popularProductList[popularProductList.length - index - 1];
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      '/productScreen',
                      arguments: productData,
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: screenWidth * 0.18,
                          height: screenWidth * 0.18,
                          decoration: BoxDecoration(
                            boxShadow: kBoxShadow2,
                            color: kWhite.withAlpha(120),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: FutureBuilder<String>(
                                future: getImageUrl(
                                    fullSizeImgPath: productData.imgPath1!),
                                builder: (context, snapshot) {
                                  if (snapshot.hasData) {
                                  
                                    return Image(
                                      image: CachedNetworkImageProvider(
                                          snapshot.data!,
                                          scale: .5),
                                      fit: BoxFit.fitHeight,
                                    );
                                  } else if (snapshot.hasError) {
                                   ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                            content: Text('Loading failed')));
                                  }
                                  return const SizedBox(
                                    child: Center(
                                        child: CircularProgressIndicator()),
                                  );
                                }),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * .5,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  productData.productName ?? '',
                                  overflow: TextOverflow.fade,
                                  softWrap: false,
                                  maxLines: 1,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 4.0),
                                  child: Text(
                                    "Designed for comfort",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              "₹ ${productData.price}",
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
