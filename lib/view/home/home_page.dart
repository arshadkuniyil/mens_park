import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mens_park/utils/colors.dart';

import 'package:mens_park/helpers/screen_size.dart';
import 'package:mens_park/viewmodel/bloc/cart/cart_bloc.dart';
import 'package:mens_park/viewmodel/bloc/home/app_bar/home_app_bar_bloc.dart';

import 'widgets/category_tab.dart';
import 'widgets/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  bool isFirstTime = true;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async{ 
      if (isFirstTime) {
        context.read<CartBloc>().add(const LoadCartEvent());
        isFirstTime = false;
      }
    });
    final double screenWidth = getScreenWidth(context);

    return BlocBuilder<HomeAppBarBloc, HomeAppBarState>(
      builder: (context, state) {
        int? categoriesLength;
        List<String> categoryNameList = ['   ', '   ', '   '];
        if (state.categoryList.isNotEmpty) {
          categoryNameList = state.categoryList[0].categoryNames!;
          categoriesLength = categoryNameList.length;
        }

        return DefaultTabController(
          length: categoriesLength ?? 3,
          child: Scaffold(
            backgroundColor: kGrey,
            appBar: PreferredSize(
              preferredSize: const Size(double.infinity, 136),
              child: CustomAppBar(
                  screenWidth: screenWidth, categoryList: categoryNameList),
            ),
            body: SafeArea(
              child: TabBarView(
                children: List.generate(
                  categoriesLength ?? 3,
                  (index) {
                    return categoriesLength == null
                        ? const Center(child: CircularProgressIndicator())
                        : CategoryTab(categoryName: categoryNameList[index]);
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
