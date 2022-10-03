import 'package:flutter/material.dart';
import 'package:mens_park/utils/colors.dart';
import 'package:simple_animations/animation_builder/play_animation_builder.dart';

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
    return PlayAnimationBuilder<double>(
        duration: const Duration(seconds: 1),
        tween: Tween(begin: .5, end: 1),
        curve: Curves.easeOut,
        builder: (context, value, _) {
          return Padding(
            padding: EdgeInsets.all(screenWidth * 0.06 * value),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                3,
                (index) {
                  return Container(
                    width: screenWidth * .22 * value,
                    height: screenWidth * .22 * value,
                    decoration: BoxDecoration(
                      color: kWhite,
                      borderRadius: BorderRadius.circular(screenWidth * .085),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          imgMapList[index]['imagePath']!,
                          width: screenWidth * .1 * value,
                        ),
                        SizedBox(
                          height: 6 * value,
                        ),
                        Text(
                          imgMapList[index]['name']!,
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: screenWidth * .04 * value),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          );
        });
  }
}
