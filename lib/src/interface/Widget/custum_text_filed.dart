import '../Themes/theme.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomFormTextField extends StatelessWidget {
  String? hintText;
  Function(String)? onChanged;
  bool? obs;
  // ignore: prefer_typing_uninitialized_variables
  var controller;

  String? errorText;

  CustomFormTextField({
    Key? key,
    this.hintText,
    this.onChanged,
    this.obs = false,
    required this.errorText,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obs!,
      style: TextStyle(color: secondaryText),
      onChanged: onChanged,
      decoration: InputDecoration(
        errorText: errorText,
        hintText: hintText,
        hintStyle: TextStyle(color: secondaryColor),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: tertiaryColor),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: secondaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: secondaryColor),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: warning),
        ),
      ),
    );
  }
}
