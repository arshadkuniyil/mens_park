import 'package:flutter/material.dart';
import 'package:mens_park/view/constants/colors.dart';
import 'package:mens_park/view/constants/screen_size.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(getScreenWidth(context) * 0.025),
          child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                   // Logo 1 3rd of height 
                  const CustomTextField(
                      prefixIcon: Icon(Icons.person), hintText: 'Full Name'),
                  const CustomTextField(
                      prefixIcon: Icon(Icons.email_rounded), hintText: 'Email'),
                  const CustomTextField(
                      prefixIcon: Icon(Icons.phone_rounded),
                      hintText: 'Mobile Number'),
                  const CustomTextField(
                      prefixIcon: Icon(Icons.key), hintText: 'Password'),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.all(getScreenWidth(context) * 0.05),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Sign Up'),
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Text(" Already have an account?"),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Sign In'),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.prefixIcon,
    required this.hintText,
  }) : super(key: key);

  final Icon prefixIcon;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getScreenWidth(context) * 0.025),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kWhite,
        ),
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: prefixIcon,
                    hintText: hintText,
                    border: InputBorder.none),
              ),
            )
          ],
        ),
      ),
    );
  }
}
