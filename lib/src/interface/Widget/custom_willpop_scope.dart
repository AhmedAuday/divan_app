import 'package:flutter/material.dart';
import '../Themes/theme.dart';

// ignore: must_be_immutable
class CustomWillPopScope extends StatelessWidget {
  CustomWillPopScope({
    super.key,
    required this.onPressed,
    required this.onPressedNo,
    required this.child,
    this.content,
    this.title,
  });

  Widget child;
  Text? title;
  Text? content;
  Function() onPressed;
  Function() onPressedNo;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: child,
      onWillPop: () async {
        return await showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) => AlertDialog(
            backgroundColor: primaryColor,
            titleTextStyle: kHeadline,
            contentTextStyle: kParaghraph,
            title: title,
            content: content,
            actions: [
              TextButton(
                onPressed: onPressedNo,
                child: Text(
                  'No',
                  style: subtitle1,
                ),
              ),
              TextButton(
                onPressed: onPressed,
                child: Text(
                  'Yes',
                  style: subtitle1,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
