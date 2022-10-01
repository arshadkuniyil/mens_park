import 'package:flutter/material.dart';
import 'package:mens_park/helpers/screen_size.dart';

class CustomErrorWidget extends StatelessWidget {
  final String errorName;
  final String errorDetails;
  final dynamic event;
  final dynamic readBloc;
  const CustomErrorWidget(
      {Key? key,
      required this.errorName,
      required this.errorDetails,
      required this.event,
      required this.readBloc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = getScreenWidth(context);
    return Container(
      margin: const EdgeInsets.all(24.0),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Image.asset(
            'assets/images/error.png',
            width: screenWidth * .4,
          ),
          Text(
            errorName,
            style: TextStyle(
                fontSize: screenWidth * .06, fontWeight: FontWeight.w600),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              errorDetails,
              style: TextStyle(
                fontSize: screenWidth * .04,
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                readBloc.add(event);
              },
              child: const Text('Retry')),
          const Spacer()
        ],
      ),
    );
  }
}
