import 'package:bookly/core/utils/constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFieldsetting extends StatelessWidget {
  CustomTextFieldsetting({super.key, this.Hint,this.preicon});
  bool ispassword = false;
  String? Hint;
  Widget ?preicon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: kPrimaryColor),
      decoration: InputDecoration(
        hintText: Hint,
        prefixIcon: preicon,
        hintStyle: TextStyle(color: kPrimaryColor),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 201, 125, 199),
            width: 2.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: kPrimaryColor,
            width: 2.0,
          ),
        ),
      ),
      obscureText: ispassword,
      obscuringCharacter: '*',
    );
  }
}
