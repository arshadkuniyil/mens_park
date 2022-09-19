import 'package:flutter/material.dart';
import 'package:mens_park/constants/colors.dart';
import 'package:mens_park/view/home/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mens_park/view/signup/sign_up.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mens Park',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: kBlack,
          secondary: kBlack,
        ),
      ),
      routes: {
        '/': (context) => const Home(),
        '/signUp': (context) =>  SignUp(),
      },
      initialRoute: '/',
    );
  }
}
