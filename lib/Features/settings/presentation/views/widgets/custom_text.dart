
import 'package:bookly/core/utils/constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomText extends StatelessWidget {
   CustomText({super.key, required this.text, this.color=kPrimaryColor});
  final String text;
  Color ?color=kPrimaryColor;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color, fontSize: 16, fontWeight: FontWeight.w600),
    );
  }
}
