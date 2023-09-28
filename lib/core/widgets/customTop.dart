import 'package:bookly/core/utils/constants.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class customTop extends StatelessWidget {
  customTop({ super.key, });
 

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 20,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50)),
        ),
        
        );
  }
}
