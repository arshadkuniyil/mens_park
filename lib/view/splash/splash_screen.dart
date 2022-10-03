import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mens_park/utils/colors.dart';
import 'package:mens_park/viewmodel/bloc/splash/splash_bloc.dart';
import 'package:mens_park/viewmodel/service/core/service_status_enum.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //

    return Scaffold(
      backgroundColor: kGrey,
      body: BlocBuilder<SplashBloc, SplashState>(
        //
        builder: (context, state) {
          if (state.userStatus ==UserSignInStatus.loading) {
            return Center(child: Image.asset('assets/images/logo_sample.png'));
          } else if (state.userStatus == UserSignInStatus.userExist) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Navigator.pushReplacementNamed(context, '/home');
            });
          } else if(state.userStatus == UserSignInStatus.userNotExist){
              WidgetsBinding.instance.addPostFrameCallback((_) {
              Navigator.pushReplacementNamed(context, '/signUp');
            });
          } else if (state.userStatus == UserSignInStatus.otpVerificationPending) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Navigator.pushReplacementNamed(context, '/otpVerificationScreen');
            });
          }
          return   Center(child: Image.asset('assets/images/logo_sample.png'));
        },
      ),
    );
  }
}
