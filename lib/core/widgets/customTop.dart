import 'package:bookly/core/utils/constants.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class customTop extends StatelessWidget {
  customTop({ super.key,this.height=20 });
 
 final double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
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
