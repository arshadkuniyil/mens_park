import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mens_park/viewmodel/bloc/auth/sign_in/sign_in_bloc.dart';
import 'package:mens_park/viewmodel/service/auth_service.dart';

class SignInWithGoogleBtn extends StatelessWidget {
  const SignInWithGoogleBtn({
    Key? key,
    required this.kPadding,
  }) : super(key: key);

  final double kPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: kPadding * 1.5, vertical: kPadding * 4),
      child: ElevatedButton(
          onPressed: () {
            context.read<SignInBloc>().add(const SignInWithGoogle());
          },
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: kPadding * 1.2),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/google_logo_white.png',
                  scale: 2,
                ),
                const Spacer(),
                Text(
                  'LOGIN WITH GOOGLE',
                  style: TextStyle(fontSize: kPadding * 1.8),
                ),
                const Spacer(),
              ],
            ),
          )),
    );
  }
}
