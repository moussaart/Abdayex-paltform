import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';

class GetMessageClass {
  static void GetMessageWaitBlock(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Icon(
            SimpleIcons.clockify,
            color: Colors.white,
            size: 35,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(message,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 14))
        ],
      ),
      backgroundColor: Colors.green,
      behavior: SnackBarBehavior.floating,
      width: 300,
      duration: const Duration(days: 1),
    ));
  }

  static void GetMessageErrorBlock(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Icon(
            Icons.error_outline_rounded,
            color: Colors.white,
            size: 35,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(message,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 12))
        ],
      ),
      backgroundColor: Colors.red,
      behavior: SnackBarBehavior.floating,
      width: 400,
      duration: const Duration(seconds: 5),
    ));
  }

  static void GetMessageinformationBlock(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Icon(
            Icons.question_mark,
            color: Colors.white,
            size: 35,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(message,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 12))
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      behavior: SnackBarBehavior.floating,
      width: 400,
      duration: const Duration(hours: 1),
    ));
  }

  static void GetMessageVerficationBlock(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Icon(
            Icons.verified,
            color: Colors.white,
            size: 35,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(message,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 12))
        ],
      ),
      backgroundColor: Colors.green,
      behavior: SnackBarBehavior.floating,
      width: 400,
      duration: const Duration(seconds: 2),
    ));
  }
}
