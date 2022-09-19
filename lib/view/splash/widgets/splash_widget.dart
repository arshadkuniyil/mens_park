import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mens_park/viewmodel/bloc/splash/splash_bloc.dart';
import 'package:mens_park/viewmodel/core/error_enum.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SplashBloc>(context)
          .add(CheckUserEvent(context: context));
      log("message");
    });

    return Scaffold(
      body: BlocBuilder<SplashBloc, SplashState>(
        //
        builder: (context, state) {
          if (state.errorEnum == ErrorEnum.networkError) {
            //todo error screen with refresh button
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
            //todo error spalsh
            return const Text("error");
            //
          } else if (state.isLoading) {
            //
            return SafeArea(
              child: Column(
                children: const [Text('Loading'), CircularProgressIndicator()],
              ),
            );
          }

          return const Scaffold(
            body: SizedBox(),
          );
        },
      ),
    );
  }
}
