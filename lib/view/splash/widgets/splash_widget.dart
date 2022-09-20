
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mens_park/viewmodel/bloc/splash/splash_bloc.dart';
import 'package:mens_park/viewmodel/core/error_enum.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: BlocBuilder<SplashBloc, SplashState>(
        //
        builder: (context, state) {
          if (state.errorEnum == ErrorEnum.networkError) {
            //TODO error screen with refresh button
            return SafeArea(
              child: IconButton(
                onPressed: () {
                  context
                      .read<SplashBloc>()
                      .add(CheckUserEvent(context: context));
                },
                icon: const Icon(Icons.refresh_rounded),
              ),
            );
            //
          } else if (state.errorEnum == ErrorEnum.unknownError) {
            //TODO error spalsh
            return const Text("unknown error");
            //
          } else if (state.isLoading) {
            // TODO Loading splash
            return SafeArea(
              child: Column(
                children: const [Text('Loading'), CircularProgressIndicator()],
              ),
            );
          }

          return const Text("splash");
        },
      ),
    );
  }
}
