import 'package:flutter/material.dart';
import 'package:mens_park/view/constants/colors.dart';
import 'package:mens_park/view/signup/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mens Park',
      theme:  ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: kBlack,
          secondary: kBlack,
        ),
      ),
      home:   const SignUp() ,
    );
  }
}

