import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mens_park/res/colors.dart';

class CreditCardBack extends StatelessWidget {
  const CreditCardBack({
    Key? key,
    required this.kPadding,
    required this.screenWidth,
    required this.cardKey,
  }) : super(key: key);

  final double kPadding;
  final double screenWidth;
  final GlobalKey<FlipCardState> cardKey;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
        if (details.delta.dx > 0) {
          cardKey.currentState!.toggleCard();
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: kPadding),
        width: double.infinity,
        height: (screenWidth - kPadding * 2) / 1.58,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter:
                  ColorFilter.mode(kGrey.withOpacity(.3), BlendMode.softLight),
              image: const AssetImage('assets/images/card_back_bg.jpg')),
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
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              cardKey.currentState!.toggleCard();
                              return '';
                            } else if (value.length < 3) {
                              return '';
                            }
                            return null;
                          },
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          keyboardType: TextInputType.number,
                          maxLength: 3,
                          buildCounter: (context,
                              {required currentLength,
                              required isFocused,
                              maxLength}) {
                            return null;
                          },
                          decoration: const InputDecoration(
                              errorStyle: TextStyle(height: 0),
                              hintText: 'CVV',
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: kWhite)),
                              isDense: true),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
