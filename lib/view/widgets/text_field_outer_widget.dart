import 'package:flutter/material.dart';
import 'package:mens_park/helpers/screen_size.dart';

import 'package:mens_park/utils/colors.dart';


class TextFieldOuter extends StatelessWidget {
  final Widget child;

  const TextFieldOuter({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getScreenWidth(context) * 0.025),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kWhite,
        ),
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              child: child,
            )
          ],
        ),
      ),
    );
  }
}
