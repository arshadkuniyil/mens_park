import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mens_park/constants/colors.dart';
import 'package:mens_park/constants/screen_size.dart';
import 'package:mens_park/viewmodel/bloc/home/category/home_category_bloc.dart';
import 'widgets/category_tab.dart';
import 'widgets/custom_app_bar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = getScreenWidth(context);

    return BlocProvider(
      create: (context) => HomeCategoryBloc()..add(LoadCategoriesEvent()),
      child: BlocBuilder<HomeCategoryBloc, HomeCategoryState>(
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
                      return
                      categoriesLength ==null?  const Center(child: CircularProgressIndicator()):
                       CategoryTab(categoryName: categoryNameList[index]);
                    },
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
