import 'package:flutter/material.dart';
import 'package:mens_park/constants/screen_size.dart';
import 'widgets/category_tab.dart';
import 'widgets/custom_app_bar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = getScreenWidth(context);
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 136),
          child: CustomAppBar(screenWidth: screenWidth),
        ),
        body: SafeArea(
          child: TabBarView(
            children: List.generate(
              6,
              (index) => const CategoryTab(),
            ),
          ),
        ),
      ),
    );
  }
}
