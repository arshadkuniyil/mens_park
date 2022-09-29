import 'package:flutter/material.dart';
import 'package:mens_park/utils/colors.dart';
import 'package:mens_park/helpers/screen_size.dart';
import 'package:mens_park/model/product_model/product_model.dart';
import 'package:mens_park/view/widgets/cart_icon_button.dart';
import 'package:mens_park/view/widgets/page_app_bar.dart';
import 'widgets/product_details_widget.dart';
import 'widgets/product_features_widget.dart';
import 'widgets/products_image_carousel.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productData =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    final screenWidth = getScreenWidth(context);
    final double iconSize = screenWidth * 0.04;

    return Scaffold(
      backgroundColor: kGrey,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: PageAppBar(
          actionWidget: CartIconButton(
           
          ),
          pageName: '',
        
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ProductsImageCarousel(
              productData: productData,
            ),
            ProductFeaturesWidget(screenWidth: screenWidth),
            ProductDetailsWidget(
                screenWidth: screenWidth,
                productData: productData,
                iconSize: iconSize)
          ],
        ),
      ),
    );
  }
}
