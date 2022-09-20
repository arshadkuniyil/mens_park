import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mens_park/viewmodel/bloc/splash/splash_bloc.dart';

import 'widgets/splash_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //

    return BlocProvider(
      create: (context) => SplashBloc()..add(CheckUserEvent(context: context)),
      child: const SplashWidget(),
    );
  }
}
