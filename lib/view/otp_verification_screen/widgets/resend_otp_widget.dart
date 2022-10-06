import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mens_park/viewmodel/bloc/auth/sign_in/sign_in_bloc.dart';

class ResendOtpWidget extends StatelessWidget {
  ResendOtpWidget({Key? key, required this.otpSentTime}) : super(key: key);

  final int otpSentTime;
  final ValueNotifier countDown = ValueNotifier(90);
  @override
  Widget build(BuildContext context) {
    final int timeLeft =
        90 - ((DateTime.now().millisecondsSinceEpoch - otpSentTime) ~/ 1000);

    countDown.value = timeLeft;

    return ValueListenableBuilder(
      valueListenable: countDown,
      builder: (context, value, child) {
        return FutureBuilder<bool>(
          future: waitOneSecond(countDown),
          builder: (context, snapshot) {
            if (snapshot.data != null) {
              if (snapshot.data!) {
                return Row(
                  children: [
                    const Text('Resend Sms in '),
                    Text('${countDown.value} s'),
                  ],
                );
              } else {
                return ElevatedButton(
                    onPressed: () {
                      context.read<SignInBloc>().add(const ResendOtp());
                    },
                    child: const Text('Resend'));
              }
            }
            return const SizedBox();
          },
        );
      },
    );
  }
}

Future<bool> waitOneSecond(ValueNotifier countDown) async {
  if (countDown.value <= 0) {
    return false;
  }
  await Future.delayed(const Duration(seconds: 1));
  WidgetsBinding.instance.addPostFrameCallback((_) {
    countDown.value = countDown.value - 1;
  });

  return true;
}
