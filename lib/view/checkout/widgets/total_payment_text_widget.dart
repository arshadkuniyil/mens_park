import 'package:flutter/material.dart';
import 'package:mens_park/utils/constant.dart';

class TotalPaymentTextWidget extends StatelessWidget {
  const TotalPaymentTextWidget({
    Key? key,
    required this.totalPrice,
    required this.screenWidth,
  }) : super(key: key);

  final String totalPrice;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Total Payment',
          style: kTextStyle1,
        ),
        Row(
          children: [
            Text(
              '₹$totalPrice ',
              style: kTextStyle1,
            ),
            Text(
              'INR',
              style: TextStyle(
                fontSize: screenWidth * .035,
                color: Colors.black45,
              ),
            ),
          ],
        )
      ],
    );
  }
}
