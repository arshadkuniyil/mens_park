import 'package:flutter/material.dart';
import 'package:mens_park/view/checkout/widgets/payment_method/custom_radio_button.dart';

import 'payment_method_enum.dart';

class PaymentMethodWidget extends StatelessWidget {
  const PaymentMethodWidget({
    Key? key,
  }) : super(key: key);

  final selectedValue = PaymentMethod.cardPayment;
  _showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Currently unavailable'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomRadioButton(
          key,
          value: PaymentMethod.cardPayment,
          groupValue: selectedValue,
          imagePath: 'assets/images/mc_symbol.png',
          onChanged: (value) {},
        ),
        CustomRadioButton(
          key,
          value: PaymentMethod.payPal,
          groupValue: selectedValue,
          imagePath: 'assets/images/paypal_symbol.png',
          onChanged: (value) {
            _showSnackBar(context);
          },
        ),
        CustomRadioButton(
          key,
          value: PaymentMethod.applePay,
          groupValue: selectedValue,
          imagePath: 'assets/images/apple_symbol.png',
          onChanged: (value) {
            _showSnackBar(context);
          },
        ),
        CustomRadioButton(
          key,
          value: PaymentMethod.googlePay,
          groupValue: selectedValue,
          imagePath: 'assets/images/google_symbol.png',
          onChanged: (value) {
            _showSnackBar(context);
          },
        )
      ],
    );
  }
}
