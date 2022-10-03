import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mens_park/view/widgets/cart_icon_button.dart';
import 'package:mens_park/viewmodel/bloc/home/app_bar/home_app_bar_bloc.dart';
import 'package:mens_park/viewmodel/service/auth_service.dart';
import 'package:mens_park/utils/colors.dart';
import 'package:mens_park/utils/constant.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({
    Key? key,
    required this.screenWidth,
    required this.categoryList,
  }) : super(key: key);

  final double screenWidth;
  final AuthService authService = AuthService();
  final List<String> categoryList;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeAppBarBloc, HomeAppBarState>(
      builder: (context, state) {
        return AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kGrey,
          shadowColor: Colors.transparent,
          flexibleSpace: SafeArea(
            child: Container(
              margin: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.04, vertical: screenWidth * 0.06),
              color: kGrey,
              child: Row(
                children: [
                  //profile icon
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/account');
                    },
                    icon: AspectRatio(
                      aspectRatio: 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/profile_symbol.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  const Spacer(),
                  //cart button
                  const CartIconButton()
                ],
              ),
            ),
          ),
          //categories tab head
          bottom: TabBar(
            labelPadding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
            isScrollable: true,
            labelColor: kBlack,
            unselectedLabelColor: kBlack.withAlpha(200),
            labelStyle: kTextStyle1,
            unselectedLabelStyle:
                const TextStyle(fontWeight: FontWeight.normal, fontSize: 17),
            indicatorColor: kBlack,
            indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(color: kBlack),
              insets: EdgeInsets.symmetric(horizontal: 22, vertical: 14),
            ),
            tabs: List.generate(
              categoryList.length,
              (index) => Tab(
                text: categoryList[index],
              ),
            ),
          ),
        );
      },
    );
  }
}
