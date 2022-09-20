import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mens_park/constants/colors.dart';
import 'package:mens_park/constants/screen_size.dart';
import 'package:mens_park/viewmodel/bloc/home/product/home_product_bloc.dart';

import 'popular_list_view.dart';
import 'product_card.dart';

class CategoryTab extends StatelessWidget {
  final String categoryName;

  const CategoryTab({Key? key, required this.categoryName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = getScreenWidth(context);
    final double paddingProductCard = screenWidth * 0.065;

    return BlocProvider(
      create: (context) => HomeProductBloc()..add(GetHomeProductsEvent(categoryName: categoryName)),
      child: BlocBuilder<HomeProductBloc, HomeProductState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.productList.isNotEmpty) {
            log("onuiHome");
            final productList = state.productList;
            return Container(
              color: kGrey,
              height: screenWidth * 0.2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 5,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: productList.length,
                      itemBuilder: (context, index) {
                        return ProductCard(
                            paddingProductCard: paddingProductCard,
                            screenWidth: screenWidth,
                            index: index,
                            productData: productList[index]);
                      },
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: PopularListView(
                      paddingProductCard: paddingProductCard,
                      screenWidth: screenWidth,
                    ),
                  )
                ],
              ),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
