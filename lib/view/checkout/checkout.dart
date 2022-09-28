import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:mens_park/constants/colors.dart';
import 'package:mens_park/constants/constant.dart';
import 'package:mens_park/helpers/formatters/credit_card_number_formatter.dart';
import 'package:mens_park/helpers/screen_size.dart';
import 'package:mens_park/view/widgets/page_app_bar.dart';

class Checkout extends StatelessWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = getScreenWidth(context);
    final double kPadding = screenWidth * 0.06;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kGrey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenWidth * .18),
        child: const PageAppBar(
          actionWidget: SizedBox(),
          pageName: 'Payment Method',
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(kPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Shipping to',
              style: kTextStyle2,
            ),
            Row(
              children: [
                SizedBox(
                    width: 40, child: Image.asset('assets/images/error.png')),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DropdownButton<String>(
                        value: 'Home',
                        items: const [
                          DropdownMenuItem(
                            value: 'Home',
                            child: Text('Home'),
                          ),
                          DropdownMenuItem(
                              value: 'Office', child: Text('Office'))
                        ],
                        onChanged: (value) {},
                      ),
                      const TextField(),
                    ],
                  ),
                )
              ],
            ),
            const Text(
              'Add Payment Method',
              style: kTextStyle2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                4,
                (index) => SizedBox(
                    width: 40, child: Image.asset('assets/images/error.png')),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: kPadding),
              padding: EdgeInsets.fromLTRB(
                  kPadding, kPadding * 1.2, kPadding, kPadding * .6),
              width: double.infinity,
              height: (screenWidth - kPadding * 2) / 1.58,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: kBlack,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Credit Card',
                        style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            color: kWhite.withOpacity(.9)),
                      ),
                      SizedBox(
                          width: screenWidth * .14,
                          child: Image.asset('assets/images/visa_logo.png'))
                    ],
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
                  TextField(
                    maxLength: 19,
                    keyboardType: TextInputType.number,
                    cursorColor: kWhite,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      CreditCardNumberFormatter(),
                    ],
                    buildCounter: (context,
                        {required currentLength,
                        required isFocused,
                        maxLength}) {
                      return null;
                    },
                    decoration: InputDecoration(
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
                          style: TextStyle(
                              color: kWhite, fontSize: screenWidth * 0.02),
                        ),
                        SizedBox(
                          width: screenWidth * .04,
                        ),
                        Expanded(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            cursorColor: kWhite,
                            inputFormatters: [
                              CreditCardExpirationDateFormatter()
                            ],
                            decoration: InputDecoration(
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
                          child: TextField(
                            keyboardType: TextInputType.text,
                            cursorColor: kWhite,
                            decoration: InputDecoration(
                              hintText: 'Enter Card Holder Name',
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
            )
          ],
        ),
      )),
    );
  }
}
