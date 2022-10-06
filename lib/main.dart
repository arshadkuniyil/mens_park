
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mens_park/utils/colors.dart';
import 'package:mens_park/view/checkout/checkout_page.dart';
import 'package:mens_park/view/home/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mens_park/view/signup/sign_up_page.dart';
import 'utils/global/global.dart';
import 'view/account/account_page.dart';
import 'view/cart/cart_page.dart';
import 'view/otp_verification_screen/otp_verification_page.dart';
import 'view/product_page/product_page.dart';
import 'view/splash/splash_screen.dart';
import 'firebase_options.dart';
import 'viewmodel/bloc/account/account_bloc.dart';
import 'viewmodel/bloc/auth/sign_in/sign_in_bloc.dart';
import 'viewmodel/bloc/auth/sign_up/sign_up_bloc.dart';
import 'viewmodel/bloc/cart/cart_bloc.dart';
import 'viewmodel/bloc/home/app_bar/home_app_bar_bloc.dart';

import 'viewmodel/bloc/home/product/home_product_bloc.dart';
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
        BlocProvider(
            create: (context) =>
                SplashBloc()..add(CheckUserEvent(context: context))),
        BlocProvider(create: (context) => HomeAppBarBloc()..add(LoadCategoriesEvent())),
        BlocProvider(create: (context) => HomeProductBloc()),
        BlocProvider(create: (context) => CartBloc()..add(const LoadCartEvent())),
        BlocProvider(create: (context) => SignUpBloc()),
        BlocProvider(create: (context) => SignInBloc()),
        BlocProvider(create: (context) => AccountBloc()),
      ],
      child: MaterialApp(
        title: 'Mens Park',
        scaffoldMessengerKey: snackbarKey,
        navigatorKey: navigatorKey,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: kBlack,
            secondary: kBlack,
          ),
        ),
        routes: {
          '/': (context) => const SplashScreen(),
          '/home': (context) => const HomePage(),
          '/productScreen': (context) => const ProductPage(),
          '/cart': (context) => CartPage(),
          '/checkout': ((context) => CheckoutPage()),
          '/signUp': (context) => SignUpPage(),
          '/otpVerificationScreen': ((context) => OtpVerificationPage()),
          '/account': ((context) => const AccountPage())
        },
        initialRoute: '/',
      ),
    );
  }
}

