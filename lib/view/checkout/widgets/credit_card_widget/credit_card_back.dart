import 'package:flutter/material.dart';
import 'package:mens_park/utils/colors.dart';

class CreditCardBack extends StatelessWidget {
  const CreditCardBack({
    Key? key,
    required this.kPadding,
    required this.screenWidth,
  }) : super(key: key);

  final double kPadding;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kPadding),
      width: double.infinity,
      height: (screenWidth - kPadding * 2) / 1.58,
      decoration: BoxDecoration(
        image: const DecorationImage(
            fit: BoxFit.cover,
         
            image: AssetImage('assets/images/card_back_bg.jpg')),
        borderRadius: BorderRadius.circular(16),
        color: kBlack,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: kPadding),
          Container(
            height: kPadding * 2,
            color: kBlack,
          ),
          SizedBox(height: kPadding),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kPadding * 3),
            child: Container(
              height: kPadding * 1.5,
              color: kWhite,
              child: Row(
                children: [
                  const Expanded(flex: 3, child: SizedBox()),
                  Expanded(
                      flex: 1,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        buildCounter: (context,
                            {required currentLength,
                            required isFocused,
                            maxLength}) {
                          return null;
                        },
                        decoration: const InputDecoration(
                            hintText: 'CVV',
                            border: InputBorder.none,
                            isDense: true),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
