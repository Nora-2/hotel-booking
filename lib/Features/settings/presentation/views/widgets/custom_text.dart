import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text});
 final String text;
  @override
  Widget build(BuildContext context) {
    return  Text(
                text,
                style: TextStyle(
                    color: Color(
                      0xff870084,
                    ),
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              );
  }
}