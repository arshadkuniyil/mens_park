import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:mens_park/constants/colors.dart';
import 'package:mens_park/constants/screen_size.dart';
import '../../core/service/auth_service.dart';
import '../widgets/text_field_outer_widget.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  final AuthService userService = AuthService();
  final HashMap userData = HashMap<String, String>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGrey,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(getScreenWidth(context) * 0.025),
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
                  TextFieldOuter(
                      child: TextField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person_rounded),
                        hintText: "Full Name",
                        border: InputBorder.none),
                    onChanged: (value) => userData['fullName'] = value,
                  )),

                  TextFieldOuter(
                    child: TextField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.phone_rounded),
                          hintText: "Mobile Number",
                          border: InputBorder.none),
                      onChanged: (value) => userData['mobileNumber'] = value,
                    ),
                  ),
                  TextFieldOuter(
                    child: TextField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.key_rounded),
                            hintText: "Password",
                            border: InputBorder.none),
                        onChanged: (value) => userData['password'] = value),
                  ),

                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.all(getScreenWidth(context) * 0.05),
                      child: ElevatedButton(
                        onPressed: () async {
                          userService.signUp(userData);
                        },
                        child: const Text('Sign Up'),
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Text(" Already have an account?"),
                  ElevatedButton(
                    onPressed: () {
                      userService.addDetails();
                    },
                    child: const Text('Sign In'),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
