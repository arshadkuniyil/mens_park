import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mens_park/utils/colors.dart';
import 'package:mens_park/helpers/screen_size.dart';
import 'package:mens_park/viewmodel/bloc/sign_up/sign_up_bloc.dart';
import 'package:mens_park/viewmodel/core/error_enum.dart';
import 'package:mens_park/viewmodel/service/auth_service.dart';

import '../widgets/text_field_outer_widget.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  final AuthService userService = AuthService();
  final HashMap userData = HashMap<String, String>();

  static final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final kPadding = getScreenWidth(context) * 0.025;
    return Scaffold(
      backgroundColor: kGrey,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(kPadding),
          child: BlocProvider(
            create: (context) => SignUpBloc(),
            child: BlocBuilder<SignUpBloc, SignUpState>(
              builder: (context, state) {
                if (state.isLoading &&
                    state.signUpWithPhoneError ==
                        SignUpWithPhoneError.noError) {
                  return SignUpWIthPhoneForm(
                      formKey: _key,
                      userData: userData,
                      kPadding: kPadding,
                      userService: userService);
                } else {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    Navigator.pushReplacementNamed(
                        context, '/otpVerificationScreen');
                  });
                }
                return const SizedBox();
              },
            ),
          ),
        ),
      ),
    );
  }
}

class SignUpWIthPhoneForm extends StatelessWidget {
  const SignUpWIthPhoneForm({
    Key? key,
    required GlobalKey<FormState> formKey,
    required this.userData,
    required this.kPadding,
    required this.userService,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final HashMap userData;
  final double kPadding;
  final AuthService userService;

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
                    onLongPress: () {
                      print('${userService.getUser()}');
                    },
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        context
                            .read<SignUpBloc>()
                            .add(SignUpWithPhoneEvent(userData, context));
                      }
                    },
                    child: const Text('  Varify  '),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
