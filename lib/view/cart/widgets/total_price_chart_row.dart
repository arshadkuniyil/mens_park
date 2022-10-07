import 'package:flutter/material.dart';
import 'package:mens_park/res/colors.dart';
import 'package:mens_park/res/constant.dart';
class TotalPriceChartRow extends StatelessWidget {
  const TotalPriceChartRow({
    Key? key,
    required this.priceCategoryName,
    required this.isBagTotal,
    required this.price,
    required this.itemCount,
  }) : super(key: key);

  final String priceCategoryName;
  final bool isBagTotal;
  final int price;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Text(
            priceCategoryName,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
          const Spacer(),
          Text(
            isBagTotal ? "($itemCount items)  " : '',
            style: const TextStyle(fontSize: 12),
          ),
          Text(
            "₹$price",
            style: kTextStyle2,
          ),
          Text(
            ' INR',
            style: TextStyle(fontSize: 12, color: kBlack.withOpacity(.4)),
          )
        ],
      ),
    );
  }
}
