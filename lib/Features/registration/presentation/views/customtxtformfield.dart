import 'package:bookly/core/utils/constants.dart';
import 'package:flutter/material.dart';



  
class customformfield extends StatelessWidget {

  customformfield({
    required this.hint,
    required this.preicon,
    this.text,
    this.sign,
    this.massege,
    super.key,
  });
  final String hint;
  final Icon preicon;
  final TextInputType? text;
  final String? sign;
  final String? massege;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.black),
      cursorColor: Colors.black,
      
      decoration: InputDecoration(
        
        hintText: hint,
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
       
        prefixIcon: preicon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(MediaQuery.of(context).size.width * 0.1),
          ),
          borderSide: const BorderSide(
            color: Colors.white,
            width: .5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(MediaQuery.of(context).size.width * 0.1),
          ),
          borderSide: BorderSide(
            color: kPrimaryColor,
            width: MediaQuery.of(context).size.width * 0.003,
          ),
        ),
      ),
      keyboardType: text,
      validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  },
    );
  }
}
