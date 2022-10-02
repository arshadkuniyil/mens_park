import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mens_park/helpers/screen_size.dart';
import 'package:mens_park/utils/colors.dart';
import 'package:mens_park/view/widgets/text_field_outer_widget.dart';
import 'package:mens_park/viewmodel/bloc/sign_up/sign_up_bloc.dart';
import 'package:mens_park/viewmodel/service/auth_service.dart';

class SignUpWIthPhoneForm extends StatelessWidget {
  const SignUpWIthPhoneForm(
      {Key? key,
      required this.userData,
      required this.kPadding,
      required this.userService,
      required this.blocContext})
      : super(key: key);

  final HashMap userData;
  final double kPadding;
  final AuthService userService;
  final BuildContext blocContext;
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // logo
              const Align(
                alignment: Alignment.centerLeft,
                child: Image(
                  width: 150,
                  image: AssetImage('assets/images/logo_sample.png'),
                ),
              ),

              //name
              TextFieldOuter(
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person_rounded),
                      hintText: "Full Name",
                      border: InputBorder.none,
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      )),
                  onChanged: (value) => userData['fullName'] = value,
                ),
              ),

              //country code
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: kWhite,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: kPadding * 1.5),
                  margin: EdgeInsets.symmetric(horizontal: kPadding),
                  width: getScreenWidth(context) * 0.3,
                  child: DropdownButton(
                    focusColor: kWhite,
                    value: '+91',
                    items: const [
                      DropdownMenuItem(
                        value: '+91',
                        child: Text('🇮🇳 +91'),
                      )
                    ],
                    onChanged: (value) {},
                  ),
                ),
              ),

              // mobile number
              TextFieldOuter(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                  buildCounter: (context,
                      {required currentLength, required isFocused, maxLength}) {
                    return null;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your number';
                    } else if (value.length < 10) {
                      return 'Please enter 10 digit number';
                    } else if (value.length == 10) {
                      try {
                        double.parse(value);
                        return null;
                      } catch (e) {
                        return 'Please enter 10 digit number';
                      }
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.phone_rounded),
                      hintText: "Mobile Number ",
                      border: InputBorder.none,
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      )),
                  onChanged: (value) => userData['mobileNumber'] = value,
                ),
              ),
              // sign up btn
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.all(getScreenWidth(context) * 0.05),
                  child: ElevatedButton(
                    onLongPress: () {},
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        context.read<SignUpBloc>().add(SignUpWithPhoneEvent(
                            context: blocContext, userData: userData));
                      }
                    },
                    child: const Text('  Verify  '),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
