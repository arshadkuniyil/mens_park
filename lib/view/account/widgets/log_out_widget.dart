import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mens_park/helpers/screen_size.dart';
import 'package:mens_park/res/colors.dart';
import 'package:mens_park/res/constant.dart';
import 'package:mens_park/helpers/custom_alert_dialog.dart';
import 'package:mens_park/viewmodel/bloc/account/account_bloc.dart';

class LogOutWidget extends StatelessWidget {
  const LogOutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = getScreenWidth(context);

    return Container(
      width: screenWidth * .10,
      height: screenWidth * .10,
      decoration: BoxDecoration(
        boxShadow: kBoxShadow,
        borderRadius: BorderRadius.circular(8),
        color: kWhite,
      ),
      child: IconButton(
        iconSize: screenWidth * .056,
        onPressed: () {
          showCustomAlert(context, 'Are you sure you want to log out', (ctx) {
            context.read<AccountBloc>().add(const LogOut());
          });
        },
        icon: const Icon(Icons.power_settings_new_rounded),
      ),
    );
  }
}
