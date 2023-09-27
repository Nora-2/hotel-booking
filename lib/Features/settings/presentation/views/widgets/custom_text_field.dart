import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class CustomProfileTextField extends StatelessWidget {
  const CustomProfileTextField({super.key, required this.isPassword});
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Stack(
          children: [
             Container(
            
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(15)),boxShadow: [
                BoxShadow(
                  blurRadius: 2,
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  offset: Offset(5, 5),
                )
              ]),
            ),
            TextField(
              style: const TextStyle(color: kPrimaryColor),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: kPrimaryColor,
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
              obscureText: isPassword,
              obscuringCharacter: '*',
            ),
           
          ],
        ),
      ),
    );
  }
}
