import 'package:flutter/material.dart';

Future<dynamic> showCustomAlert(
      BuildContext context, String message, Function(BuildContext ctx) callback) {
    return showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          title:  Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(ctx).pop(),
              child: const Text('No'),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: ElevatedButton(
                onPressed: () {
                  callback(ctx);
                },
                child: const Text('Yes'),
              ),
            )
          ],
        );
      },
    );
  }

