import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mens_park/utils/colors.dart';

import 'package:mens_park/model/product_model/product_model.dart';
import 'package:mens_park/viewmodel/bloc/cart/cart_bloc.dart';

class ShowSizeAlertDialog {
  final BuildContext context;
  final ProductModel productData;
  final int quantity;
  ShowSizeAlertDialog({
    required this.context,
    required this.productData,
    required this.quantity,
  }) {
    showDialog(
      context: context,
      builder: (ctx) {
        final sizeList = productData.size;
        final ValueNotifier<String> dropDownValue =
            ValueNotifier<String>(sizeList![0]);
        return SizeAlertDialog(
          productData: productData,
          dropDownValue: dropDownValue,
          sizeList: sizeList,
          blocContext: context,
          quantity: quantity,
        );
      },
    );
  }
}

class SizeAlertDialog extends StatelessWidget {
  const SizeAlertDialog(
      {Key? key,
      required this.productData,
      required this.dropDownValue,
      required this.sizeList,
      required this.blocContext,
      required this.quantity})
      : super(key: key);

  final ProductModel productData;
  final ValueNotifier<String> dropDownValue;
  final List<String>? sizeList;
  final BuildContext blocContext;
  final int quantity;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(18.0),
        ),
      ),
      title: Text('Please select ${productData.category!.toLowerCase()} size'),
      content: ValueListenableBuilder(
        builder: (ctx, value, child) {
          return DropdownButton<String>(
            underline: const SizedBox(),
            style: const TextStyle(backgroundColor: kBlack),
            value: dropDownValue.value,
            items: List.generate(
                sizeList!.length,
                (index) => DropdownMenuItem<String>(
                    value: sizeList![index],
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: kBlack,
                      ),
                      width: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          sizeList![index],
                          style: const TextStyle(
                              backgroundColor: kBlack,
                              color: kWhite,
                              fontSize: 16),
                        ),
                      ),
                    ))),
            onChanged: (value) {
              if (value != null) {
                dropDownValue.value = value;
              }
            },
          );
        },
        valueListenable: dropDownValue,
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: ElevatedButton(
            onPressed: () {
              final pop = Navigator.of(context).pop();
              final addToCartEvent = blocContext.read<CartBloc>().add(
                    AddToCart(
                        product: productData,
                        size: dropDownValue.value,
                        quantity: quantity),
                  );
              if (ModalRoute.of(context)!.settings.name == '/productScreen') {
                addToCartEvent;
                Navigator.of(context).pushReplacementNamed('/cart');
              } else {
                addToCartEvent;
              }
              pop;
            },
            child: const Text('OK'),
          ),
        )
      ],
    );
  }
}
