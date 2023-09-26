import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key});
 bool ispassword =false ;
  @override
  Widget build(BuildContext context) {
    return TextField(
                style:const TextStyle(color: kPrimaryColor),
                decoration:  InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: kPrimaryColor,
                      width: 2.0,
                    ),
                  ),
                  focusedBorder:  OutlineInputBorder(
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
