import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:mens_park/constants/colors.dart';
import 'package:mens_park/constants/screen_size.dart';
import 'package:mens_park/viewmodel/service/auth_service.dart';

import '../widgets/text_field_outer_widget.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  final AuthService userService = AuthService();
  final HashMap userData = HashMap<String, String>();

  @override
  Widget build(BuildContext context) {
    final kPadding = getScreenWidth(context) * 0.025;
    return Scaffold(
      backgroundColor: kGrey,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(kPadding),
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
                    child: TextField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person_rounded),
                          hintText: "Full Name",
                          border: InputBorder.none),
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
                    child: TextField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.phone_rounded),
                        hintText: "Mobile Number ",
                        border: InputBorder.none,
                      ),
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
                          userService.signUpWithPhone(userData, context);
                        },
                        child: const Text('  Varify  '),
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
