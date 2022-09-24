import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mens_park/constants/colors.dart';
import 'package:mens_park/model/product_model/product_model.dart';
import 'package:mens_park/viewmodel/bloc/home/product/home_product_bloc.dart';

class SizeAlertDialog extends StatelessWidget {
  const SizeAlertDialog({
    Key? key,
    required this.productData,
    required this.dropDownValue,
    required this.sizeList,
    required this.blocContext,
  }) : super(key: key);

  final ProductModel productData;
  final ValueNotifier<String> dropDownValue;
  final List<String>? sizeList;
  final BuildContext blocContext;
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
              blocContext.read<HomeProductBloc>().add(
                  AddToCartEvent(productData, dropDownValue.value, blocContext));
              pop;
            },
            child: const Text('OK'),
          ),
        )
      ],
    );
  }
}
