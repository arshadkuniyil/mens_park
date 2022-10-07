import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mens_park/res/colors.dart';
import 'package:mens_park/res/constant.dart';
import 'package:mens_park/helpers/screen_size.dart';
import 'package:mens_park/viewmodel/bloc/cart/cart_bloc.dart';

class CartIconButton extends StatelessWidget {
  const CartIconButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final screenWidth = getScreenWidth(context);
    return Stack(
      children: [
        SizedBox(
          width: screenWidth * .12,
          height: screenWidth * .12,
          child: Center(
            child: Container(
              width: screenWidth * .10,
              height: screenWidth * .10,
              decoration: BoxDecoration(
                boxShadow: kBoxShadow,
                borderRadius: BorderRadius.circular(8),
                color: kWhite,
              ),
              child: BlocBuilder<CartBloc, CartState>(
                builder: (context, state) {
                  return IconButton(
                    color: kBlack,
                    iconSize: 20,
                    onPressed: () {
                      if (state.cartItemCount == 0) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('Bag is empty'),
                        ));
                      } else if (ModalRoute.of(context)!.settings.name ==
                          '/cart') {
                        return;
                      } else if (ModalRoute.of(context)!.settings.name ==
                          '/home') {
                        Navigator.of(context).pushNamed(
                          '/cart',
                        );
                      } else if (ModalRoute.of(context)!.settings.name ==
                              '/productScreen' ||
                          ModalRoute.of(context)!.settings.name == '/account') {
                        Navigator.of(context).pushReplacementNamed(
                          '/cart',
                        );
                      }
                    },
                    icon: const Icon(Icons.local_mall_rounded),
                  );
                },
              ),
            ),
          ),
        ),
        //item count badge
        Positioned.fill(
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              alignment: Alignment.center,
              width: screenWidth * .04,
              height: screenWidth * .04,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: kBlack,
              ),
              child: BlocBuilder<CartBloc, CartState>(
                builder: (context, state) {
                  return Text(
                    state.cartItemCount == 0
                        ? ''
                        : state.cartItemCount.toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: kWhite, fontSize: 8),
                  );
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}
