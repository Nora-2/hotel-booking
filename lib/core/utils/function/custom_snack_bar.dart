import 'package:bookly/core/utils/constants.dart';
import 'package:flutter/material.dart';

void customSnackBar(context,{ String? text, SnackBarAction? action}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
     
     behavior: SnackBarBehavior.floating,
   content:  
        Text(
        text!,
        style: const TextStyle(color: Colors.white),
      ),
        padding: EdgeInsets.all(20),
      action: action,
       backgroundColor: kPrimaryColor,
    
    ),
  );
}
