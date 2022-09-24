import 'package:flutter/material.dart';
import 'package:mens_park/constants/colors.dart';
import 'package:mens_park/constants/screen_size.dart';
import 'package:mens_park/model/cart_model/cart_model.dart';

class CartIconButton extends StatelessWidget {
  final String itemCount;
  final List<CartModel> productList;

  const CartIconButton(
      {Key? key, required this.itemCount, required this.productList})
      : super(key: key);

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
                  borderRadius: BorderRadius.circular(8), color: kWhite),
              child: IconButton(
                color: kBlack,
                iconSize: 20,
                onPressed: () {
                  if (itemCount == '0' ) {
                    //TODO
                  } else if (ModalRoute.of(context)!.settings.name == '/cart'){
                    
                  } 
                  else {
                    Navigator.of(context).pushNamed('/cart',
                        arguments: {'productList': productList});
                  }
                },
                icon: const Icon(Icons.local_mall_rounded),
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
              child: Text(
                itemCount,
                textAlign: TextAlign.center,
                style: const TextStyle(color: kWhite, fontSize: 8),
              ),
            ),
          ),
        )
      ],
    );
  }
}
