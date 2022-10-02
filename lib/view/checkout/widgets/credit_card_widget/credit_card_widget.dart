import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

import 'credit_card_back.dart';
import 'credit_card_front.dart';

class CreditCardWidget extends StatelessWidget {
   const CreditCardWidget({
    Key? key,
    required this.kPadding,
    required this.screenWidth,
  }) : super(key: key);

  final double kPadding;
  final double screenWidth;
  static final GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  @override
  Widget build(BuildContext context) {
    return FlipCard(
        key: cardKey,
        front: CreditCardFront(kPadding: kPadding, screenWidth: screenWidth, cardKey: cardKey),
        back: CreditCardBack(kPadding: kPadding, screenWidth: screenWidth,cardKey:cardKey));
  }
}
