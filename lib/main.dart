import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mens_park/constants/colors.dart';
import 'package:mens_park/view/home/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mens_park/view/signup/sign_up.dart';
import 'view/otp_varification_screen/otp_verification_screen.dart';
import 'view/splash/splash_screen.dart';
import 'firebase_options.dart';
import 'viewmodel/bloc/home/app_bar/home_app_bar_bloc.dart';
import 'viewmodel/bloc/home/product/home_product_bloc.dart';
import 'viewmodel/bloc/sign_up/sign_up_bloc.dart';
import 'viewmodel/bloc/splash/splash_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SplashBloc()..add(CheckUserEvent(context: context))),
        BlocProvider(
            create: (context) => HomeAppBarBloc()..add(LoadCategoriesEvent())),
        BlocProvider(create: (context) => SignUpBloc()),
      ],
      child: MaterialApp(
        title: 'Mens Park',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: kBlack,
            secondary: kBlack,
          ),
        ),
        routes: {
          '/': (context) => const SplashScreen(),
          '/home': (context) => const Home(),
          '/signUp': (context) => SignUp(),
          '/otpVerificationScreen': ((context) => const OtpVerificationScreen())
        },
        initialRoute: '/',
      ),
    );
  }
}
