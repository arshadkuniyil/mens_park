import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mens_park/constants/constant.dart';
import 'package:mens_park/view/widgets/cart_icon_button.dart';
import 'package:mens_park/viewmodel/bloc/home/app_bar/home_app_bar_bloc.dart';
import 'package:mens_park/viewmodel/service/auth_service.dart';

import '../../../constants/colors.dart';

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
                      Navigator.of(context).pushNamed('/signUp');
                    },
                    icon: AspectRatio(
                      aspectRatio: 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          'https://cdn.pixabay.com/photo/2018/07/27/22/03/boy-3566903_960_720.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        AuthService().signOut();
                      },
                      child: const Text('test')),
                  const Spacer(),
                  //cart button
                  CartIconButton(
                      itemCount:
                          '${state.cartItemCount == 0 ? '' : state.cartItemCount}',
                      productList: state.cartProductLst)
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
