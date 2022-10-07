import 'package:flutter/material.dart';
import 'package:mens_park/res/colors.dart';
import 'package:mens_park/res/constant.dart';

class AddressTextFieldWidget extends StatelessWidget {
   const AddressTextFieldWidget({
    Key? key,
    required this.screenWidth,
    required this.kPadding,
    required this.dropDownValue,
    required this.addressTextController
  }) : super(key: key);

  final double screenWidth;
  final double kPadding;
  final ValueNotifier<String> dropDownValue;
  final TextEditingController addressTextController;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: screenWidth * .22,
          height: screenWidth * .22,
          decoration: BoxDecoration(
            color: kWhite,
            borderRadius: BorderRadius.circular(screenWidth * .09),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(kPadding),
            child: Image.asset(
              'assets/images/map_bg.png',
              scale: .8,
              width: screenWidth * .1,
            ),
          ),
        ),
        SizedBox(
          width: kPadding,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ValueListenableBuilder(
                valueListenable: dropDownValue,
                builder: (context, value, child) {
                  return DropdownButton<String>(
                    underline: const SizedBox(),
                    isDense: true,
                    value: dropDownValue.value,
                    items: const [
                      DropdownMenuItem(
                        value: 'Home',
                        child: Text(
                          'Home',
                          style: kTextStyle1,
                        ),
                      ),
                      DropdownMenuItem(
                        value: 'Office',
                        child: Text(
                          'Office',
                          style: kTextStyle1,
                        ),
                      )
                    ],
                    onChanged: (value) {
                      if (value != null) dropDownValue.value = value;
                    },
                  );
                },
              ),
              TextFormField(
                controller: addressTextController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your address';
                  } else if (value.length < 6) {
                    return 'minimum 6 characters';
                  }
                  return null;
                },
                maxLines: 2,
                decoration: const InputDecoration(
                  hintText: 'Enter your address',
                  border: InputBorder.none,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12),
                  ),
                ),
                style: const TextStyle(color: Colors.black54),
              ),
            ],
          ),
        )
      ],
    );
  }
}
