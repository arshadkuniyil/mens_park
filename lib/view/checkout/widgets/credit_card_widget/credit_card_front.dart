import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_multi_formatter/formatters/credit_card_expiration_input_formatter.dart';
import 'package:mens_park/res/colors.dart';
import 'package:mens_park/helpers/formatters/credit_card_number_formatter.dart';

class CreditCardFront extends StatelessWidget {
  CreditCardFront({
    Key? key,
    required this.kPadding,
    required this.screenWidth,
    required this.cardKey,
  }) : super(key: key);

  final double kPadding;
  final double screenWidth;
  final GlobalKey<FlipCardState> cardKey;
  final dropDownValue = ValueNotifier('Credit Card');

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
        if (details.delta.dx < 0) {
          cardKey.currentState!.toggleCard();
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: kPadding),
        padding: EdgeInsets.fromLTRB(
            kPadding, kPadding * 1.2, kPadding, kPadding * .6),
        width: double.infinity,
        height: (screenWidth - kPadding * 2) / 1.58,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter:
                  ColorFilter.mode(kGrey.withOpacity(.3), BlendMode.softLight),
              image: const AssetImage('assets/images/card_front_bg.jpg')),
          borderRadius: BorderRadius.circular(16),
          color: kBlack,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: ValueListenableBuilder(
                    valueListenable: dropDownValue,
                    builder: (context, value, child) {
                      return DropdownButton<String>(
                        value: dropDownValue.value,
                        dropdownColor: kBlack,
                        underline: const SizedBox(),
                        items: [
                          DropdownMenuItem(
                            value: 'Credit Card',
                            child: Text(
                              'Credit Card',
                              style: TextStyle(
                                  fontSize: screenWidth * 0.04,
                                  color: kWhite.withOpacity(.9)),
                            ),
                          ),
                          DropdownMenuItem(
                            value: 'Debit Card',
                            child: Text(
                              'Debit Card',
                              style: TextStyle(
                                  fontSize: screenWidth * 0.04,
                                  color: kWhite.withOpacity(.9)),
                            ),
                          )
                        ],
                        onChanged: (value) {
                          value != null ? dropDownValue.value = value : null;
                        },
                      );
                    },
                  )),
                  SizedBox(
                      width: screenWidth * .14,
                      child: Image.asset('assets/images/visa_logo.png'))
                ],
              ),
            ),
            SizedBox(
              height: screenWidth * .04,
            ),
            SizedBox(
              width: screenWidth * .12,
              child: Image.asset('assets/images/credit_card_chip.png'),
            ),
            SizedBox(
              height: screenWidth * .02,
            ),
            TextFormField(
              maxLength: 19,
              keyboardType: TextInputType.number,
              cursorColor: kWhite,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '';
                } else if (value.length < 3) {
                  return '';
                }
                return null;
              },
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                CreditCardNumberFormatter(),
              ],
              buildCounter: (context,
                  {required currentLength, required isFocused, maxLength}) {
                return null;
              },
              decoration: InputDecoration(
                errorStyle: const TextStyle(height: 0),
                hintText: 'Enter Card Number',
                hintStyle: TextStyle(
                  color: kGrey,
                  fontSize: screenWidth * .04,
                  fontWeight: FontWeight.w200,
                ),
                contentPadding: EdgeInsets.zero,
                isDense: true,
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white30),
                ),
              ),
              style: TextStyle(
                color: kWhite,
                fontWeight: FontWeight.w600,
                fontSize: screenWidth * .08,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  SizedBox(
                    width: screenWidth * 0.2,
                  ),
                  Text(
                    'VALID\nTHRU',
                    style:
                        TextStyle(color: kWhite, fontSize: screenWidth * 0.02),
                  ),
                  SizedBox(
                    width: screenWidth * .04,
                  ),
                  Expanded(
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      cursorColor: kWhite,
                      inputFormatters: [CreditCardExpirationDateFormatter()],
                      decoration: InputDecoration(
                        errorStyle: const TextStyle(height: 0),
                        hintText: 'Enter Expiry Date',
                        hintStyle: TextStyle(
                          color: kGrey,
                          fontSize: screenWidth * .04,
                          fontWeight: FontWeight.w200,
                        ),
                        contentPadding: EdgeInsets.zero,
                        isDense: true,
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white30),
                        ),
                      ),
                      style: TextStyle(
                        color: kWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth * .05,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.text,
                      cursorColor: kWhite,
                      decoration: InputDecoration(
                        errorStyle: const TextStyle(height: 0),
                        hintText: 'Enter Cardholder Name',
                        hintStyle: TextStyle(
                          color: kGrey,
                          fontSize: screenWidth * .04,
                          fontWeight: FontWeight.w200,
                        ),
                        contentPadding: EdgeInsets.zero,
                        isDense: true,
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white30),
                        ),
                      ),
                      style: const TextStyle(
                        color: kWhite,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Image.asset('assets/images/mc_symbol.png')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
