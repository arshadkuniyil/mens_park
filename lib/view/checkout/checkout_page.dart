
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mens_park/utils/colors.dart';
import 'package:mens_park/utils/constant.dart';
import 'package:mens_park/helpers/screen_size.dart';
import 'package:mens_park/view/checkout/widgets/address_text_field_widget.dart';
import 'package:mens_park/view/widgets/page_app_bar.dart';
import 'package:mens_park/viewmodel/bloc/cart/cart_bloc.dart';
import 'widgets/credit_card_widget/credit_card_widget.dart';
import 'widgets/payment_method/payment_method_widget.dart';
import 'widgets/total_payment_text_widget.dart';

class CheckoutPage extends StatelessWidget {
  CheckoutPage({Key? key}) : super(key: key);
  final dropDownValue = ValueNotifier('Home');
  static final orderFormKey = GlobalKey<FormState>();
  final TextEditingController addressTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final double screenWidth = getScreenWidth(context);
    final double kPadding = screenWidth * 0.06;
    final totalPrice = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kGrey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenWidth * .18),
        child: PageAppBar(
          actionWidget: SizedBox(
            width: kPadding,
          ),
          pageName: 'Payment Method',
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kPadding),
        child: Form(
          key: orderFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Shipping to',
                style: kTextStyle2,
              ),
              SizedBox(
                height: kPadding * .6,
              ),
              AddressTextFieldWidget(
                screenWidth: screenWidth,
                kPadding: kPadding,
                dropDownValue: dropDownValue,
                addressTextController: addressTextController,
              ),
              SizedBox(
                height: kPadding * 1.5,
              ),
              const Text(
                'Payment Method',
                style: kTextStyle2,
              ),
              SizedBox(
                height: kPadding,
              ),
              const PaymentMethodWidget(),
              CreditCardWidget(kPadding: kPadding, screenWidth: screenWidth),
              SizedBox(
                height: kPadding * .4,
              ),
              TotalPaymentTextWidget(
                  totalPrice: totalPrice.toString(), screenWidth: screenWidth),
              Expanded(
                child: SizedBox(
                  height: double.infinity,
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        
                        if (orderFormKey.currentState!.validate()) {
                      
                          final address = addressTextController.text;
                          context.read<CartBloc>().add(
                              PlaceOrder(address: address));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content:
                                      Text('Check card details and address')));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size.fromHeight(screenWidth * .15),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(screenWidth * .08),
                        ),
                      ),
                      child: Text(
                        'Confirm Order',
                        style: TextStyle(fontSize: screenWidth * .05),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
