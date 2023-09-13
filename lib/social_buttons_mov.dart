// ignore_for_file: constant_identifier_names, prefer_if_null_operators, use_key_in_widget_constructors, must_be_immutable, prefer_typing_uninitialized_variables

library custom_button_mov;

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  var onPressed;
  final Widget child;
  var style;
  CustomButton(
      {Key? key, @required this.onPressed, required this.child, this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          padding: const EdgeInsets.all(16.0),
          backgroundColor: Colors.blue,
          elevation: 9.0,
          textStyle: const TextStyle(
            fontSize: 20,
          ),
        ),
        child: child);
  }
}
