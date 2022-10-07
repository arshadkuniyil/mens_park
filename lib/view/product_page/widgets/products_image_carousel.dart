import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mens_park/res/colors.dart';
import 'package:mens_park/model/product_model/product_model.dart';
import 'package:mens_park/view/widgets/image_future_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductsImageCarousel extends StatelessWidget {
   ProductsImageCarousel({
    Key? key,
    required this.productData,
   
  }) : super(key: key);

  final ProductModel productData;

final dotActiveIndex = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: CarouselSlider.builder(
                itemCount: 4,
                itemBuilder: (context, index, realIndex) {
                  switch (index) {
                    case 0:
                      return ImageFutureWidget(
                          productImagePath: productData.fullSizeImgPath!);
                    case 1:
                      return ImageFutureWidget(
                          productImagePath: productData.imgPath1!);
                    case 2:
                      return ImageFutureWidget(
                          productImagePath: productData.imgPath2!);
                    case 3:
                      return ImageFutureWidget(
                          productImagePath: productData.imgPath3!);
                    default:
                      return const SizedBox();
                  }
                },
                options: CarouselOptions(
                  viewportFraction: 1,
                  aspectRatio: 2 / 3,
                  onPageChanged: (index, reason) =>
                      dotActiveIndex.value = index,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10,),
          ValueListenableBuilder(
            builder: (context, value, child) {
              return AnimatedSmoothIndicator(
                activeIndex: dotActiveIndex.value,
                count: 4,
                effect: const WormEffect(
                  dotWidth: 6,
                  dotHeight: 6,
                  radius: 6,
                  spacing: 3,
                  activeDotColor: kBlack,
                ),
              );
            },
            valueListenable: dotActiveIndex,
          )
        ],
      ),
    );
  }
}
