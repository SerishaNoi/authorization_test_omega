import 'package:flutter/material.dart';

showErrorDialog({required String message, required GlobalKey key}) {
  showDialog(
    context: key.currentContext!,
    builder: (context) => AlertDialog(
      title: Text(message),
      actions: [
        TextButton(child: const Text('Close'), onPressed: () => Navigator.pop(context)),
      ],
    ),
  );
}
