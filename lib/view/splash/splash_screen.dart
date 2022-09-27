
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mens_park/constants/colors.dart';
import 'package:mens_park/view/widgets/custom_error_widget.dart';
import 'package:mens_park/viewmodel/bloc/splash/splash_bloc.dart';
import 'package:mens_park/viewmodel/core/error_enum.dart';


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
          if (state.errorEnum == ErrorEnum.networkError) {
            return SafeArea(
                child: CustomErrorWidget(
              errorName: 'No internet connection',
              errorDetails:
                  'Please connect your internet connection.\n      it looks like you\'re not connected to\n                          the internet',
              retryBtnEvent: CheckUserEvent(context: context),
              bloc: context.read<SplashBloc>(),
            ));
            //
          } else if (state.errorEnum == ErrorEnum.unknownError) {
            return  CustomErrorWidget(
              errorName: 'Unknown Error',
              errorDetails: '',
               retryBtnEvent: CheckUserEvent(context: context),
              bloc: context.read<SplashBloc>(),
            );
            //
          } else if (state.isLoading && state.errorEnum == ErrorEnum.noError) {
            return Center(child: Image.asset('assets/images/logo_sample.png'));
          } else if (!state.isLoading && state.errorEnum == ErrorEnum.noError) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Navigator.pushReplacementNamed(context, '/home');
            });
          }

          return Center(child: Image.asset('assets/images/logo_sample.png'));
        },
      ),
    );
  }
}
