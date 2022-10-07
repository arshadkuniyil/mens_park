import 'package:flutter/material.dart';
import 'package:mens_park/helpers/screen_size.dart';
import 'package:mens_park/res/colors.dart';

class CustomRadioButton<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final String imagePath;
  final ValueChanged<T?> onChanged;

  const CustomRadioButton(
    Key? key, {
    required this.value,
    required this.groupValue,
    required this.imagePath,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = getScreenWidth(context);
    final bool isSelected = value == groupValue;

    return Container(
      width: screenWidth * .2,
      height: screenWidth * .15,
      padding: EdgeInsets.all(screenWidth * .01),
      decoration: BoxDecoration(
          color: isSelected ? kWhite : kGrey,
          borderRadius: BorderRadius.circular(screenWidth * .035),
          border:
              Border.all(color: isSelected ? kBlack : kBlack.withOpacity(.2))),
      child: IconButton(
        onPressed: () => onChanged(value),
        icon: Image.asset(imagePath),
      ),
    );
  }
}
