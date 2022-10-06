import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mens_park/helpers/screen_size.dart';
import 'package:mens_park/utils/colors.dart';
import 'package:mens_park/utils/constant.dart';
import 'package:mens_park/view/widgets/page_app_bar.dart';
import 'package:mens_park/viewmodel/bloc/account/account_bloc.dart';

import 'widgets/log_out_widget.dart';
import 'widgets/order_product_container.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = getScreenWidth(context);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AccountBloc>().add(const LoadOrdersList());
    });
    return Scaffold(
      backgroundColor: kGrey,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: PageAppBar(
          actionWidget: LogOutWidget(),
          pageName: '',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
          child: BlocBuilder<AccountBloc, AccountState>(
            buildWhen: (previous, current) {
              if (previous != current) {
                return true;
              } else if (previous.orderProductList.length !=
                  current.orderProductList.length) {
                return true;
              }
              return false;
            },
            builder: (context, state) {
             
              if (state.isLoading) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: kWhite,
                          radius: screenWidth * 0.1,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Image.asset(
                              'assets/images/profile_symbol.png',
                            ),
                          ),
                        ),
                        Text(
                          state.displayName,
                          style: kTextStyle1,
                        ),
                      ],
                    )),
                    SizedBox(
                      height: screenWidth * 0.08,
                    ),
                    const Text(
                      'Your Orders',
                      style: kTextStyle1,
                    ),
                    SizedBox(
                      height: screenWidth * 0.08,
                    ),
                    Expanded(
                        child: state.orderProductList.isNotEmpty
                            ? ListView.builder(
                                itemCount: state.orderProductList.length,
                                itemBuilder: (context, index) {
                                  return OrderProductContainer(
                                    screenWidth: screenWidth,
                                    productData: state.orderProductList[index],
                                    index: index,
                                  );
                                },
                              )
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('Empty'),
                                ],
                              )),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
