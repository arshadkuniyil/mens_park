import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mens_park/utils/colors.dart';
import 'package:mens_park/viewmodel/core/service_status_enum.dart';
import 'package:mens_park/viewmodel/bloc/splash/splash_bloc.dart';

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
          if (state.userStatus == UserStatus.loading) {
            return Center(child: Image.asset('assets/images/logo_sample.png'));
          } else if (state.userStatus == UserStatus.userExist) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Navigator.pushReplacementNamed(context, '/home');
            });
          } else if(state.userStatus == UserStatus.userNotExist){
              WidgetsBinding.instance.addPostFrameCallback((_) {
              Navigator.pushReplacementNamed(context, '/signUp');
            });
          } else if (state.userStatus == UserStatus.otpVerificationPending) {
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
