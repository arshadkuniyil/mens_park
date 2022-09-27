import 'package:flutter/material.dart';
import 'package:mens_park/constants/colors.dart';

class ProductFeaturesWidget extends StatelessWidget {
  const ProductFeaturesWidget({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.06),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          3,
          (index) {
            return Container(
              width: screenWidth * .25,
              height: screenWidth * .25,
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.circular(screenWidth * .09),
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/error.png',
                    scale: .8,
                    width: screenWidth * .2,
                  ),
                  const Text('data')
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
