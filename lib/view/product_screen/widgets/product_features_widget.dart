import 'package:flutter/material.dart';
import 'package:mens_park/utils/colors.dart';

class ProductFeaturesWidget extends StatelessWidget {
  const ProductFeaturesWidget({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> imgMapList = [
      {'imagePath': 'assets/images/cotton_symbol.png', 'name': 'Cotton'},
      {'imagePath': 'assets/images/comfort_symbol.png', 'name': 'Comfort'},
      {'imagePath': 'assets/images/premium_symbol.png', 'name': 'Premium'},
    ];
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    imgMapList[index]['imagePath']!,
                    width: screenWidth * .1,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    imgMapList[index]['name']!,
                    style: const TextStyle(color: Colors.black54),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
