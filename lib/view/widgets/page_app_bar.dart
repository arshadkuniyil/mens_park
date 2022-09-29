import 'package:flutter/material.dart';
import 'package:mens_park/utils/colors.dart';
import 'package:mens_park/helpers/screen_size.dart';
import 'package:mens_park/view/widgets/cart_icon_button.dart';

class PageAppBar extends StatelessWidget {
  const PageAppBar({
    Key? key,
   
    required this.pageName,
    required this.actionWidget,
  }) : super(key: key);

  
  final String pageName;
  final Widget actionWidget;

  @override
  Widget build(BuildContext context) {
    final screenWidth= getScreenWidth(context);
    return SafeArea(
      child: Container(
        margin: EdgeInsets.all(
           screenWidth * 0.06),
        child: Row(
          children: [
            IconButton(
              constraints: const BoxConstraints(),
              padding: const EdgeInsets.only(left: 8),
              icon: const Icon(
                Icons.arrow_back_ios,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            const Spacer(),
            Text(
              pageName,
              // ignore: prefer_const_constructors
              style: const TextStyle(
                  color: kBlack, fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const Spacer(),
            Center(
              child: actionWidget,
            ),
          ],
        ),
      ),
    );
  }
}
